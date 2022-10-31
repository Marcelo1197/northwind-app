﻿using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using NorthwindAPI.Domain.Models.Shipper.Request;
using NorthwindAPI.Domain.Models.Shipper.Response;
using NorthwindAPI.Logic;

namespace NorthwindAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ShippersController : ControllerBase
    {
        private ShipperLogic _logic = new ShipperLogic();
        private readonly IMapper _mapper;

        public ShippersController(IMapper mapper)
        {
            _mapper = mapper;
        }

        [HttpGet]
        [Route("{id}")]
        public async Task<ActionResult<ResponseShipper>> Get(int id) {
            if (ModelState.IsValid)
            {
                var shipperEntityFound = _logic.Get(id);
                var shipperResponse = _mapper.Map<ResponseShipper>(shipperEntityFound);
                return Ok(shipperResponse);
            }
            else
            {
                return BadRequest();
            }
        }

        [HttpGet]
        [Route("")]
        public async Task<ActionResult<List<ResponseShipper>>> GetAll()
        {
            if (ModelState.IsValid)
            {
                var shippersList = _logic.GetAll();
                return Ok(shippersList);
            }
            else
            {
                return BadRequest();
            }
        }

        [HttpPost]
        public async Task<ActionResult<ResponseShipper>> Add([FromBody] RequestAddShipper shipper)
        {
            if (ModelState.IsValid)
            {
                _logic.Add(shipper);
                return Ok(shipper);
            }
            else
            {
                return BadRequest();
            }
        }

        [HttpPut]
        public async Task<ActionResult<ResponseShipper>> Edit([FromBody] RequestEditShipper shipper)
        {
            if (ModelState.IsValid)
            {
                _logic.Update(shipper);
                return Ok(shipper);
            }
            else
            {
                return BadRequest();
            }
        }

        [HttpDelete]
        [Route("{id}")]
        public async Task<ActionResult> Delete(int id)
        {
            if (ModelState.IsValid)
            {
                _logic.Delete(id);
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }
    }
}
