@echo off
echo 1.  Your Seestar should be in station mode and connected to your home network
echo 2.  Use JNow (on date) to target object.
echo 3.  Command: seestar_run.py ip_address, target_name, ra, dec, is_use_LP_filter, session_time, RA panel size,Dec panel size, RA offset factor, Dec offset factor, debug_flag, shutdown_flag
echo 4.  Set up the Seestar as you usually would connecting your phone.
echo 5.  Turn on dew filter


REM Add a 5 Second timeout
timeout /t 5
REM Set up Seestar and do horizontal calibration

REM Target 1 - Test a mosaic
REM python seestar_run.py 192.168.1.240 'Arcturus' "14:16:49" "+19:03:23" 0 180 1 1 1 1 0 0
REM timeout /t 180

REM Target 0 2230-2330
REM python seestar_run.py 192.168.1.240 'M10' "16:58:27.68" "-04:08:20.2" 0 120 1 1 1 1 0 0
REM timeout /t 60

REM Target 1 2330-0030
python seestar_run.py 192.168.1.240 'M16' "18:20:17.08" "-13:49:08.7" 1 5400 1 1 1 1 0 0
timeout /t 180

REM Target 2 0030-1330
python seestar_run.py 192.168.1.240 'M17' "18:22:12.99" "-16:09:41.0" 1 3600 1 1 1 1 0 0
timeout /t 180

REM Target 3 1330-1430
python seestar_run.py 192.168.1.240 'M20' "18:03:53.89" "-23:01:52.5" 1 5400 1 1 1 1 0 0
timeout /t 

REM Target 2 2230 - 2330
REM python seestar_run.py 192.168.1.240 'M4' "16:25:06" "-26:35:02" 0 3600 1 1 1 1 0 0
REM timeout /t 10

REM Target 3 - 2330 0030
REM python seestar_run.py 192.168.1.240 'IC4592' "16:14:26" "-19:21:49" 1 3600 1 1 1 1 1 0
REM timeout /t 10

REM Target 4 - 0030 - 0130
REM python seestar_run.py 192.168.1.240 'M20' "18:03:53.89" "-23:01:52.5" 1 3600 1 1 1 1 1 0
REM timeout /t 10

REM Press F12 to open the script console
REM #core.moveToRaDec("18h20m17.08s", "-13d49m08.7s");
REM core.moveToRaDec("18h03m53.89s", "-23d01m52.5s"); #M20
