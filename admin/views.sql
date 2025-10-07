┌────────┬──────────────────────────────────────────────────────────────┐
│  name  │                             sql                              │
├────────┼──────────────────────────────────────────────────────────────┤
│ recent │ CREATE VIEW recent(icao_id, report_time, tempf, wdir, wspd,  │
│        │ wgst, name) as select icao_id, report_time, tempf, wdir, wsp │
│        │ d, wgst, name from metars order by report_time desc limit 45 │
├────────┼──────────────────────────────────────────────────────────────┤
│ fnl    │ CREATE VIEW fnl as select report_time, icao_id, tempf, wdir, │
│        │  wspd, wgst from metars where icao_id='KDFW' order by report │
│        │ _time desc limit 30                                          │
├────────┼──────────────────────────────────────────────────────────────┤
│ gxy    │ CREATE VIEW gxy as select report_time, icao_id, tempf, wdir, │
│        │  wspd, wgst from metars where icao_id='KJFK' order by report │
│        │ _time desc limit 30                                          │
├────────┼──────────────────────────────────────────────────────────────┤
│ dfi    │ CREATE VIEW dfi as select report_time, icao_id, tempf, wdir, │
│        │  wspd, wgst from metars where icao_id='KSFO' order by report │
│        │ _time desc limit 30                                          │
└────────┴──────────────────────────────────────────────────────────────┘
