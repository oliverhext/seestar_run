@echo off
echo 1.  Your Seestar should be in station mode and connected to your home network
echo 2.  Use JNow (on date) to target object.
echo 3.  Command: seestar_run.py ip_address, target_name, ra, dec, is_use_LP_filter, session_time, RA panel size,Dec panel size, RA offset factor, Dec offset factor, debug_flag, shutdown_flag
echo 4.  Set up the Seestar as you usually would connecting your phone.
echo 5.  Turn on dew filter


REM Add a 5 Second timeout
timeout /t 5
REM Target 1
python seestar_run.py 192.168.1.240 'Arcturus' "14:16:47.75" "+19:03:16.7" 0 240 1 1 1 1 0 0
timeout /t 10
REM Target 2
python seestar_run.py 192.168.1.240 'M20' "18:03:53.89" "-23:01:52.5" 1 3600 1 1 1 1 1 0
timeout /t 10
REM Target 3
python seestar_run.py 192.168.1.240 '52_Cygni' "20:46:40.02" "+30:48:28.9" 1 3600 1 1 1 1 0 0
timeout /t 10
REM Target 4 - With shutdown flag
python seestar_run.py 192.168.1.240 'M16' "18:20:17.08" "-13:49:08.7" 1 3600 1 1 1 1 1 1


