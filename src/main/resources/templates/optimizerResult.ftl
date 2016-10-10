<?xml version="1.0" encoding="UTF-8"?>

<OfpCalculationJobResult>
    <ResultDescription>
        <FlightNo>342Y</FlightNo>
        <Airline>
            <Icao>DLH</Icao>
            <Iata>LH</Iata>
        </Airline>
        <AirlineOperator>
            <Icao>DLH</Icao>
            <Iata>LH</Iata>
        </AirlineOperator>
        <DepartureAirport>
            <Icao>EDDF</Icao>
            <Iata>FRA</Iata>
        </DepartureAirport>
        <DestinationAirport>
            <Icao>EDDM</Icao>
            <Iata>MUC</Iata>
        </DestinationAirport>
        <STD>2016-03-01T10:00:00Z</STD>
        <ETD>2016-03-01T10:00:00Z</ETD>
        <DayOfFlight>2016-03-01</DayOfFlight>
        <RequestorId>u538330</RequestorId>
        <RamLoadRevision>---not-implemented---</RamLoadRevision>
        <Urgency>Medium</Urgency>
        <NumberOfJobs>1</NumberOfJobs>
    </ResultDescription>
    <CalculationJob>
        <OfpId>1</OfpId>
        <JobName>MDT/R</JobName>
        <CalculationJobResult>
            <ResultStatus>
                <StatusCode>0</StatusCode>
                <ErrorReasonId>0</ErrorReasonId>
                <ErrorDescription/>
            </ResultStatus>
            <OutputFileList>
                <OutputFile>
                    <ContentChecksum method="MD5">C489D05C80A51ECDD95BEC466BB3620D</ContentChecksum>
                    <FileName>ProfOPT.dat:1</FileName>
                    <Content>FILE_VERSION        1.0.0
                        #HEAD#
                        CALCULATION_TIME    08Mar2016:11.11.15
                        R_FLIGHT_EVENT_ID   0

                        DISTANCE   TIME
                        TOTAL                 387266   2298

                        WIND   FF          JAR_HOLD_FF HOLD_FL_150_FF FAR_LRC_FF  FAR_SEG_FF  PLANNED_HOLD_FF  RCLRAP_HOLD_FF  RCLDEST_HOLD_FF
                        AVERAGE                   0   0.6527415   0.4600000   0.4686782     -1.0000000  -1.0000000   0.4578260       -1.0000000      -1.0000000

                        #PARAM#
                        PLANNED       RCLRAP    RCLDEST       ESTIM FOB
                        LOAD                    3200.000       0.000       0.000    3200.000
                        ZERO_FUEL_WEIGHT       44660.000       0.000       0.000   44660.000
                        TAKE_OFF_WEIGHT        47122.000       0.000       0.000
                        LANDING_WEIGHT         45622.000       0.000       0.000
                        MTOW                   68000.000       0.000       0.000
                        ADDFU                      0.000       0.000       0.000       0.000
                        ADDFU_OPN                  0.000       0.000       0.000       0.000 0
                        ADDFU_ATC                  0.000       0.000       0.000       0.000 0
                        ADDFU_WXX                  0.000       0.000       0.000       0.000 0
                        ADDFU_DEV                  0.000       0.000       0.000       0.000 0
                        ADDFU_ON_BOARD             0.000       0.000       0.000             0
                        ADDFU_MIN_RES              0.000       0.000       0.000
                        ADDFU_MIN_LW               0.000       0.000       0.000
                        NO_ALTN_ADDFU              0.000       0.000       0.000
                        EXTRA_OPN                  0.000       0.000       0.000       0.000
                        EXTRA_OPN_REMAIN           0.000       0.000       0.000
                        EXTRA_ATC                  0.000       0.000       0.000       0.000
                        EXTRA_ATC_REMAIN           0.000       0.000       0.000
                        EXTRA_WXX                  0.000       0.000       0.000       0.000
                        EXTRA_WXX_REMAIN           0.000       0.000       0.000
                        EXTRA_DEV                  0.000       0.000       0.000       0.000
                        EXTRA_DEV_REMAIN           0.000       0.000       0.000
                        ETOPS_ADDFU                0.000       0.000       0.000       0.000
                        ETOPS_ICE_CORR             0.000       0.000       0.000
                        RECL_ADDFU                 0.000       0.000       0.000
                        TERR_ADDFU                 0.000       0.000       0.000
                        DPA_ADDFU                  0.000       0.000       0.000
                        TODA_ADDFU                 0.000       0.000       0.000
                        VSOPS_COST_INDEX          -1          -1          -1
                        OFFLOAD_REASON             0           0           0
                        ZFW_CORR                  49           0           0
                        LOSS                       5           0           0
                        GAIN                       0           0           0
                        PROGNOSIS                  1
                        0     -1           -1

                        PLANNED PLANNED     RCLRAP  RCLRAP    RCLDEST RCLDEST
                        FUEL    TIME       FUEL    TIME       FUEL    TIME
                        TRIP                    1500.000   2298       0.000      0       0.000      0
                        CONT                     138.000    211       0.000      0       0.000      0
                        CONT_REMAIN                0.000      0       0.000      0       0.000      0
                        FAR_RESERVE                0.000      0       0.000      0       0.000      0
                        DESC_ALLOW_FUEL            0.000      0       0.000      0       0.000      0
                        SP_HOLD_DEST               0.000      0       0.000      0       0.000      0
                        ALTN                       0.000      0       0.000      0       0.000      0
                        SP_HOLD_ALTN               0.000      0       0.000      0       0.000      0
                        HOLD                     824.000   1800       0.000      0       0.000      0
                        T_ETOPS_ADDFU              0.000      0       0.000      0       0.000      0
                        T_ETOPS_ICE_CORR           0.000      0       0.000      0       0.000      0
                        T_TERR_ADDFU               0.000      0       0.000      0       0.000      0
                        T_DPA_ADDFU                0.000      0       0.000      0       0.000      0
                        UNUSABLE_FUEL              0.000      0       0.000      0       0.000      0
                        TOF                     2462.000   4309       0.000      0       0.000      0
                        DEST_HOLD                  0.000      0       0.000      0       0.000      0
                        POS_EXTRA              15378.000      0       0.000      0       0.000      0
                        TAXI                     192.000    960       0.000      0       0.000      0

                        #FL_BELOW#
                        TRIP_FUEL  TRIP_TIME AVG_WC
                        1499.000       2302      0

                        #DELTA_TAKEOFF_WEIGHT#
                        TRIP_FUEL  TRIP_TIME AVG_WC        TOW  D_ZFW  D_TOF ZFWCORR
                        1483       2295      0      46122   -984    -16      16
                        1514       2296      0      48122    953     47      49

                        #ADJUSTED_TAKEOFF_WEIGHT#
                        NUM_TAKEOFF_WEIGHT 2

                        TRIP_FUEL  TRIP_TIME AVG_WC         TOW       D_ZFW       D_TOF ZFWCORR
                        1483.000       2295      0   46122.000    -984.000     -16.000      16

                        LEVELCHANGES 0

                        TRIP_FUEL  TRIP_TIME AVG_WC         TOW       D_ZFW       D_TOF ZFWCORR
                        1514.000       2296      0   48122.000     953.000      47.000      49

                        LEVELCHANGES 0

                        #SPEED_CHANGE#
                        NUM_SPEED_CHANGE 0

                        #ALTERNATE#
                        NUMBER_ALTERNATIVES 0
                        NUMBER_VIA_ALTN     0
                        ALTERNATE_ERRORS    0

                        #RCL-ALTN#
                        NUMBER_ALTERNATIVES 0
                        NUMBER_VIA_ALTN     0
                        ALTERNATE_ERRORS    0

                        #RAP-ALTN#
                        NUMBER_ALTERNATIVES 0
                        NUMBER_VIA_ALTN     0
                        ALTERNATE_ERRORS    0

                        #OFP_DEP_DEST#
                        PATH_TYPE           MAIN
                        DESTINATION         955401
                        ICAO_SID            DKB6F
                        ICAO_STR            ANORA2A
                        SID_ATS_ROUTE
                        STR_ATS_ROUTE
                        GREAT_CIRCLE_DIST   299267
                        AVERAGE_GC_TRACK    128.64
                        AVERAGE_WIND_COMP   0.000
                        AVERAGE_WIND_DIR    0.00
                        AVERAGE_WIND_SPEED  0.00
                        PATH_START_TIME     1456827360
                        NUMBER_POINTS       47
                        WPT_ID      P C    SPEED       FL TAS  GS     SEG-WIND   TEMP  TROP        TRIP  TRIP     TRIP ETO  AIRWAY    VIA   SEG   WPT  LATITUDE LONGITUDE  NI WI CP AU   SU F O CT B  WPT-WIND  T    MAG  OUTB   MAX F   PRED  SHEAR COST   FREQ      MIN BRF I15 S   SID_STAR   LVL  SP  RVSM   DISP
                        MACH   IAS                  TRK    CRS        LEVL        FUEL  TIME     DIST IND                  TRK  CODE                                                DIR  SPEED      VAR TRACK   ALT I     ID   RATE INDX             ALT IND IND I         ID  CODE       IND   CODE
                        955397      3 1 0.000   0.0   110  -1  -1   0.00   0.00  14.3 11000       0.000     0        0   0   DKB6F   RSID  -1.0  EDDF  18011990   3085364   O PA NC FF   KT N N ED Y   0   0.00 -  -2.00 262.3    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N   EDDF
                        2116380     3 1 0.780 154.3   552  -1  -1   0.00   0.00  11.4 11000     128.000    72     4445   0   DKB6F   RSID 262.3 DF134  18010374   3066758   O UN NC FF   KT N N ED N   0   0.00 T  -2.00 224.6    -1 0     -1  -1.00   -1     -1 30784.86  -1   0 1    2978265    -1  -1     N  DF134
                        2143424     3 1 0.780 154.3   887  -1  -1   0.00   0.00  10.3 11000     156.000    86     6147   0   DKB6F   RSID 224.5 DF141  18006448   3060743   O UN NC FF   KT N N ED N   0   0.00 T  -2.00 199.7    -1 0     -1  -1.00   -1     -1 30784.86  -1   0 1    2978265    -1  -1     N  DF141
                        -2          3 1 0.780 154.3  1219  -1  -1   0.00   0.00   8.2 11000     181.000    98     7760   0   DKB6F   RSID 199.7 T_O_C  18001534   3058008  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  1524  -1  -1   0.00   0.00   6.1 11000     203.000   110     9241   0   DKB6F   RSID 199.7 T_O_C  17997021   3055498  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        2124371     3 1 0.780 154.3  1718  -1  -1   0.00   0.00   4.5 11000     218.000   118    10303   0   DKB6F   RSID 199.7 DF143  17993786   3053699   O UN NC FF   KT N N ED N   0   0.00 T  -2.00 119.6    -1 0     -1  -1.00   -1     -1 30784.86  -1   0 1    2978265    -1  -1     N  DF143
                        -2          3 1 0.780 154.3  2134  -1  -1   0.00   0.00   2.5 11000     248.000   134    12575   0   DKB6F   RSID 119.6 T_O_C  17990152   3063634  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        2124367     3 1 0.780 154.3  2383  -1  -1   0.00   0.00   0.3 11000     267.000   144    14087   0   DKB6F   RSID 119.6 DF137  17987732   3070244   O UN NC FF   KT N N ED N   0   0.00 T  -2.00 119.3    -1 0     -1  -1.00   -1     -1 30784.86  -1   0 1    2978265    -1  -1     N  DF137
                        -2          3 1 0.780 154.3  2743  -1  -1   0.00   0.00  -1.7 11000     294.000   159    16273   0   DKB6F   RSID 119.3 T_O_C  17984272   3079833  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        2124385     3 1 0.780 154.3  2836  -1  -1   0.00   0.00  -3.1 11000     311.000   169    17796   0   DKB6F   RSID 119.3 DF159  17981859   3086512   O UN NC FF   KT N N ED N   0   0.00 T  -2.00 119.1    -1 0     -1  -1.00   -1     -1 32583.18  -1   0 1    2978265    -1  -1     N  DF159
                        -2          3 1 0.780 154.3  3353  -1  -1   0.00   0.00  -5.1 11000     374.000   205    23678   0   DKB6F   RSID 119.3 T_O_C  17972596   3112343  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  3962  -1  -1   0.00   0.00  -8.8 11000     424.000   234    29044   0   DKB6F   RSID 119.3 T_O_C  17964131   3135884  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  4572  -1  -1   0.00   0.00 -12.7 11000     475.000   266    34963   0   DKB6F   RSID 119.3 T_O_C  17954779   3161825  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  5182  -1  -1   0.00   0.00 -16.7 11000     528.000   299    41440   0   DKB6F   RSID 119.3 T_O_C  17944527   3190179  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  5791  -1  -1   0.00   0.00 -20.7 11000     582.000   336    48658   0   DKB6F   RSID 119.3 T_O_C  17933078   3221737  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  6401  -1  -1   0.00   0.00 -24.6 11000     639.000   377    56982   0   DKB6F   RSID 119.3 T_O_C  17919847   3258080  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        30136837    3 1 0.780 154.3  6635  -1  -1   0.00   0.00 -27.4 11000     662.000   393    60403   0   DKB6F   RSID 119.3 AMTIX  17914400   3273000   O EA NC FF   KT N N ED N   0   0.00 T  -2.10 103.9    -1 0     -1  -1.00   -1     -1 32827.02  -1   0 1    2978265    -1  -1     N  AMTIX
                        -2          3 1 0.780 154.3  7010  -1  -1   0.00   0.00 -29.3 11000     699.000   420    66236   0   DKB6F   RSID 104.0 T_O_C  17909841   3301349  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        2067078     3 1 0.780 154.3  7085  -1  -1   0.00   0.00 -30.8 11000     707.000   426    67505   0   DKB6F   RSID 104.0 AKONI  17908846   3307515   O EA NC FF   KT Y N ED Y   0   0.00 T  -2.20 131.1    -1 0     -1  -1.00   -1     -1 32827.02  -1   0 1    2978265    -1  -1     N  AKONI
                        -2          3 1 0.780 154.3  8230  -1  -1   0.00   0.00 -34.8 11000     830.000   524    89350   0   DKB6F   RSID 131.5 T_O_C  17862318   3389749  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  8839  -1  -1   0.00   0.00 -40.5 11000     903.000   587   103775   0   DKB6F   RSID 131.5 T_O_C  17831505   3443812  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3  9449  -1  -1   0.00   0.00 -44.4 11000     964.000   642   116903   0   DKB6F   RSID 131.5 T_O_C  17803403   3492849  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3 10058  -1  -1   0.00   0.00 -48.4 11000    1023.000   701   130399   0   DKB6F   RSID 131.5 T_O_C  17774452   3543098  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        -2          3 1 0.780 154.3 10668  -1  -1   0.00   0.00 -52.4 11000    1085.000   767   145739   0   DKB6F   RSID 131.5 T_O_C  17741473   3600014  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0 11894 0     -1  -1.00   -1     -1    -1.00  -1   0 1    2978265    -1  -1     N  T_O_C
                        854536      3 1 0.750 130.3 10668 222 222   0.00   0.00 -54.3 11000    1143.000   871   168966   0   DKB6F   RSID 131.5   DKB  17691391   3685790   O  D NC FF   KT N N ED Y   0   0.00 T  -2.40 133.5 11894 0     -1  -1.00   20 117.80 32827.02  -1   1 1    2978265    -1  -1     N    DKB
                        30129936    3 1 0.750 130.3 10668 222 222   0.00   0.00 -54.3 11000    1220.000  1011   200172   0    T104    AWY 133.6 ANORA  17621800   3797400   O EA NC FF   KT N N ED Y   0   0.00 T  -2.50 133.7 11894 0     -1  -1.00   20     -1 19781.56  -1   1 0         -1   FOB  -1     N  ANORA
                        -3          3 1 0.750 130.2 10668 222 222   0.00   0.00 -54.3 11000    1253.000  1070   213158   0 ANORA2A    STR 133.8 T_O_D  17592743   3843577  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0 11894 0     -1  -1.00   20     -1    -1.00  -1   0 2   30389279   FVS  -1     N  T_O_D
                        -4          3 1 0.760 144.0 10058  -1  -1   0.00   0.00 -52.4 11000    1256.000  1105   220923   0 ANORA2A    STR 133.8 B_O_D  17575343   3871118  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        2156463     3 1 0.760 144.0  9936  -1  -1   0.00   0.00 -50.0 11000    1257.000  1111   222414   0 ANORA2A    STR 133.8 XERUM  17572000   3876400   O EA NC FF   KT N N ED N   0   0.00 T  -2.60 134.0    -1 0     -1  -1.00   -1     -1 32583.18  -1   0 2   30389279   FVS  -1     N  XERUM
                        -4          3 1 0.760 144.0  9449  -1  -1   0.00   0.00 -48.0 11000    1259.000  1138   228331   0 ANORA2A    STR 134.1 B_O_D  17558698   3897299  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        -4          3 1 0.760 144.0  8839  -1  -1   0.00   0.00 -44.4 11000    1263.000  1180   237936   0 ANORA2A    STR 134.1 B_O_D  17537083   3931157  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        2142836     3 1 0.760 144.0  8643  -1  -1   0.00   0.00 -41.8 11000    1265.000  1194   240903   0 ANORA2A    STR 134.1 BURAM  17530400   3941600   O EA NC FF   KT Y N ED Y   0   0.00 T  -2.60 137.9    -1 0     -1  -1.00   -1     -1 19507.24  -1   0 2   30389279   FVS  -1     N  BURAM
                        -4          3 1 0.760 144.0  8230  -1  -1   0.00   0.00 -39.8 11000    1268.000  1223   247343   0 ANORA2A    STR 138.0 B_O_D  17514924   3962728  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        -4          3 1 0.760 144.0  7010  -1  -1   0.00   0.00 -34.5 11000    1278.000  1310   265281   0 ANORA2A    STR 138.0 B_O_D  17471761   4021387  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        568836      3 1 0.760 144.0  6811  -1  -1   0.00   0.00 -29.9 11000    1279.000  1324   268174   0 ANORA2A    STR 138.0 ROKIL  17464793   4030821   O EA NC FF   KT N N ED N   0   0.00 T  -2.70  77.7    -1 0     -1  -1.00   -1     -1 14417.07  -1   0 2   30389279   FVS  -1     N  ROKIL
                        -4          3 1 0.760 144.0  6401  -1  -1   0.00   0.00 -27.9 11000    1283.000  1354   273960   0 ANORA2A    STR  77.9 B_O_D  17468758   4058443  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        -4          3 1 0.760 144.0  5791  -1  -1   0.00   0.00 -24.6 11000    1288.000  1399   282638   0 ANORA2A    STR  77.9 B_O_D  17474669   4099894  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        -4          3 1 0.760 144.0  5182  -1  -1   0.00   0.00 -20.7 11000    1295.000  1445   291144   0 ANORA2A    STR  77.9 B_O_D  17480424   4140549  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279   FVS  -1     N  B_O_D
                        426504      3 1 0.760 144.0  4685  -1  -1   0.00   0.00 -17.1 11000    1301.000  1484   298369   0 ANORA2A    STR  77.9   MIQ  17485281   4175101   O DB NC FF   KT N N ED N   0   0.00 T  -2.80 149.9    -1 0     -1  -1.00   -1    426 12862.59  -1   0 2   30389279   FVS  -1     N    MIQ
                        -4          3 1 0.760 144.0  4572  -1  -1   0.00   0.00 -15.1 11000    1302.000  1493   300008   0 ANORA2A    STR 150.0 B_O_D  17483846   4176358  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279    -1  -1     N  B_O_D
                        -4          3 1 0.760 144.0  3962  -1  -1   0.00   0.00 -12.7 11000    1311.000  1544   308871   0 ANORA2A    STR 150.0 B_O_D  17476082   4183152  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279    -1  -1     N  B_O_D
                        -4          3 1 0.760 144.0  3353  -1  -1   0.00   0.00  -8.8 11000    1319.000  1594   317377   0 ANORA2A    STR 150.0 B_O_D  17468630   4189666  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279    -1  -1     N  B_O_D
                        -4          3 1 0.760 144.0  2743  -1  -1   0.00   0.00  -4.8 11000    1333.000  1675   330130   0 ANORA2A    STR 150.0 B_O_D  17457455   4199423  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279    -1  -1     N  B_O_D
                        -4          3 1 0.760 144.0  2134  -1  -1   0.00   0.00  -0.8 11000    1344.000  1740   339377   0 ANORA2A    STR 150.0 B_O_D  17449351   4206490  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279    -1  -1     N  B_O_D
                        -4          3 1 0.760 144.0  1524  -1  -1   0.00   0.00   3.1 11000    1355.000  1803   348240   0 ANORA2A    STR 150.0 B_O_D  17441583   4213259  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279    -1  -1     N  B_O_D
                        -4          3 1 0.760 144.0  1362  -1  -1   0.00   0.00   5.6 11000    1358.000  1819   350491   0 ANORA2A    STR 150.0 B_O_D  17439609   4214976  -1 -1 -1 FF   KT N N -1 N   0   0.00 T   0.00  -1.0    -1 0     -1  -1.00   -1     -1    -1.00  -1   0 2   30389279    -1  -1     N  B_O_D
                        955401      3 1 0.760 144.0   448  -1  -1   0.00   0.00   9.1 11000    1500.000  2298   387266   0 ANORA2A    STR 150.0  EDDM  17407362   4242991   O PA NC FF   KT N N ED Y   0   0.00 T  -2.80  -1.0    -1 0     -1  -1.00   -1     -1  8503.94  -1   0 2   30389279    -1  -1     N   EDDM
                        ROUTING_TEXT        1
                        DKB6F DKB T104 ANORA ANORA2A
                        SID_INFO            9
                        955397   EDDF  18011990   3085364 0
                        2116380  DF134  18010374   3066758 4445
                        2143424  DF141  18006448   3060743 1703
                        2124371  DF143  17993786   3053699 4156
                        2124367  DF137  17987732   3070244 3783
                        2124385  DF159  17981859   3086512 3709
                        30136837  AMTIX  17914400   3273000 42607
                        2067078  AKONI  17908846   3307515 7102
                        854536    DKB  17691391   3685790 101461
                        STAR_INFO           6
                        30129936  ANORA  17621800   3797400 0
                        2156463  XERUM  17572000   3876400 22243
                        2142836  BURAM  17530400   3941600 18489
                        568836  ROKIL  17464793   4030821 27271
                        426504    MIQ  17485281   4175101 30196
                        955401   EDDM  17407362   4242991 88896
                        REP_NUMBER_POINTS   0

                        #OFP_DEST_ALTN#
                        NUMBER_ALTERNATIVES  0

                        #OFP_DEP_RCLDEST#
                        PATH_TYPE           RCL
                        DESTINATION         0
                        ICAO_SID
                        ICAO_STR
                        SID_ATS_ROUTE
                        STR_ATS_ROUTE
                        GREAT_CIRCLE_DIST   0
                        AVERAGE_GC_TRACK    -1.00
                        AVERAGE_WIND_COMP   0.000
                        AVERAGE_WIND_DIR    0.00
                        AVERAGE_WIND_SPEED  0.00
                        PATH_START_TIME     0
                        NUMBER_POINTS       0

                        #OFP_DEST_RCLDESTALTN#
                        NUMBER_ALTERNATIVES  0

                        #OFP_DEP_RAP#
                        PATH_TYPE           RAP
                        DESTINATION         0
                        ICAO_SID
                        ICAO_STR
                        SID_ATS_ROUTE
                        STR_ATS_ROUTE
                        GREAT_CIRCLE_DIST   0
                        AVERAGE_GC_TRACK    -1.00
                        AVERAGE_WIND_COMP   0.000
                        AVERAGE_WIND_DIR    0.00
                        AVERAGE_WIND_SPEED  0.00
                        PATH_START_TIME     0
                        NUMBER_POINTS       0
                        REP_NUMBER_POINTS   0

                        #OFP_RAP_RAPALTN#
                        NUMBER_ALTERNATIVES  0

                        #OFP_DPA_DPAAP#
                        PATH_TYPE           DPA
                        DESTINATION         0
                        ICAO_SID
                        ICAO_STR
                        SID_ATS_ROUTE
                        STR_ATS_ROUTE
                        GREAT_CIRCLE_DIST   0
                        AVERAGE_GC_TRACK    0.00
                        AVERAGE_WIND_COMP   0.000
                        AVERAGE_WIND_DIR    0.00
                        AVERAGE_WIND_SPEED  0.00
                        PATH_START_TIME     0
                        NUMBER_POINTS       0
                        REP_NUMBER_POINTS   0
                        #END#

                        #ATS2#
                        #ATS_GENERAL#
                        AIRCRAFT_REGISTRATION          DAILY
                        ADDRESSES                      AD
                        DEP_ADDRESSES                  EUCHZMFP EUCBZMFP
                        DEST_ADDRESSES
                        #END_ATS_GENERAL#

                        #ATS_FLIGHT_PLAN#
                        FLIGHT_NUMBER_AIRLINE_ICAO     DLH
                        FLIGHT_NUMBER                  342
                        OPERATIONAL_SUFFIX             Y
                        CALLSIGN                       342
                        FLIGHT_ID_DATE                 2016-03-01
                        BEST_ESTIMATED_DEPARTURE_TIME  2016-03-01 10:00
                        DEPARTURE_AIRPORT_ICAO         EDDF
                        DESTINATION_AIRPORT_ICAO       EDDM
                        #END_ATS_FLIGHT_PLAN#

                        #ATS_ICAO_FLIGHTPLAN#
                        ITEM8_FLIGHT_RULES             I
                        ITEM8_TYPE_OF_FLIGHT           S
                        ITEM9_WAKE_TURBULENCE          M
                        ITEM10_EQUIPMENT               SDIPRWY/S
                        ITEM15                         N0432F350 DKB6F DKB T104 ANORA ANORA2A
                        ITEM16_ESTIMATED_ELAPSED_TIME  00:38
                        ITEM18_OTHER_INFORMATION       EET/EDUU0007 EDMM0020 REG/DAILY DOF/160301 RVR/075 RMK/TCAS
                        ATSX_ITEM10A                   SDE2E3FGIRWXYZ
                        ATSX_ITEM10B                   H
                        ATSX_ITEM18                    PBN/A1B1C1D1O1S1S2 DAT/VM DOF/160301 REG/DAILY EET/EDUU0007 EDMM0020 CODE/3C6599 RVR/075 RMK/TCAS
                        #END_ATS_ICAO_FLIGHTPLAN#

                        #ATS_FAA_DOMESTIC_FLIGHTPLAN#
                        FAA_INITIAL_SPEED
                        FAA_INITIAL_FLIGHTLEVEL
                        FAA_AIRCRAFT_SUFFIX
                        FAA_ROUTING
                        FAA_ESTIMATED_ELAPSED_TIME
                        FAA_REMARK
                        #END_ATS_FAA_DOMESTIC_FLIGHTPLAN#
                        #END_ATS2#

                        #COST#
                        ACFT_TIME_COST      611.268
                        FUEL_COST           507.600
                        GEN_TIME_COST       0.000
                        OPT_TIME_COST       0.000
                        DELAY_COST          0.000
                        CREW_OVER_TIME      0.000
                        OFFLOAD_COST        0.000
                        TOTAL_ATC_CHARGES   542.686
                        NO_ATC_CHARGES      2
                        GERMANY INTL A/P;EDDF;EDDF;TNC;245.06      ;USD;DKB6F;DKB6F;01-Mar-2016 10:16:00;01-Mar-2016 10:17:12;0.00        ;0.00        ;0;0;0;0;0;ED;181.6200  ;1.2400    ;1.0000    ;225.2088  ;0.0000    ;999999999.9900  ;EUR;0.9190      ;0.0000      ;0.0000      ;0.0000      ;1.0000      ;1.0000      ;2
                        EUROCONTROL/GERMANY;EDDF;EDDM;ERC;297.63      ;USD;DKB6F;ANORA2A;01-Mar-2016 10:16:12;01-Mar-2016 10:54:18;325465.47   ;299266.97   ;0;0;0;0;0;ED;90.2600   ;1.1700    ;2.5900    ;273.5149  ;0.0000    ;999999999.9900  ;EUR;0.9190      ;61000.0000  ;69500.0000  ;68900.0000  ;1.0000      ;1.0000      ;1
                        GERMANY INTL A/P;EDDM;EDDM;TNC;0.00        ;USD;ANORA2A;ANORA2A;01-Mar-2016 10:54:18;01-Mar-2016 10:54:18;0.00        ;0.00        ;0;0;0;0;0;ED;0.0000    ;0.0000    ;0.0000    ;0.0000    ;0.0000    ;0.0000          ;EUR;0.9190      ;0.0000      ;0.0000      ;0.0000      ;0.0000      ;0.0000      ;0
                        #ENDCOST#

                        #CLIMB#

                        FL100                                         FL150                                         FL200                                         FL310                                         FL350
                        FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND
                        LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP
                        3048.0   0.0   0.0  -4.8   0.0  -1.00   0.0   4572.0   0.0   0.0 -14.7   0.0  -1.00   0.0   6096.0   0.0   0.0 -24.6   0.0  -1.00   0.0   9448.8   0.0   0.0 -46.4   0.0  -1.00   0.0  10668.0   0.0   0.0 -54.3   0.0  -1.00   0.0

                        #CRUISE#
                        NUMBER_WPT 4
                        NUMBER_WINDBLOCK 5

                        1FLBELOW                                      CURRENT                                       1FLABOVE                                      2FLBELOW                                      2FLABOVE
                        FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND
                        LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP
                        T_O_C   10058.4   0.0   0.0 -50.4   0.0  -1.00   0.0  10668.0   0.0   0.0 -54.3   0.0  -1.00   0.0  11277.6   0.0   0.0 -56.5   0.0  -1.00   0.0   9448.8   0.0   0.0 -46.4   0.0  -1.00   0.0  11887.2   0.0   0.0 -56.5   0.0  -1.00   0.0
                        DKB     10058.4   0.0   0.0 -50.4   0.0  -1.00   0.0  10668.0   0.0   0.0 -54.3   0.0  -1.00   0.0  11277.6   0.0   0.0 -56.5   0.0  -1.00   0.0   9448.8   0.0   0.0 -46.4   0.0  -1.00   0.0  11887.2   0.0   0.0 -56.5   0.0  -1.00   0.0
                        ANORA   10058.4   0.0   0.0 -50.4   0.0  -1.00   0.0  10668.0   0.0   0.0 -54.3   0.0  -1.00   0.0  11277.6   0.0   0.0 -56.5   0.0  -1.00   0.0   9448.8   0.0   0.0 -46.4   0.0  -1.00   0.0  11887.2   0.0   0.0 -56.5   0.0  -1.00   0.0
                        T_O_D   10363.2   0.0   0.0 -52.4   0.0  -1.00   0.0  10668.0   0.0   0.0 -54.3   0.0  -1.00   0.0  10972.8   0.0   0.0 -56.3   0.0  -1.00   0.0  10058.4   0.0   0.0 -50.4   0.0  -1.00   0.0  11277.6   0.0   0.0 -56.5   0.0  -1.00   0.0

                        #DESCENT#

                        FL390                                         FL350                                         FL310                                         FL200                                         FL100
                        FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND   FLIGHT  WIND  WIND  TEMP   ISA  SHEAR  WIND
                        LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP    LEVEL   DIR SPEED         DEV   RATE  COMP
                        11887.2   0.0   0.0 -56.5   0.0  -1.00   0.0  10668.0   0.0   0.0 -54.3   0.0  -1.00   0.0   9448.8   0.0   0.0 -46.4   0.0  -1.00   0.0   6096.0   0.0   0.0 -24.6   0.0  -1.00   0.0   3048.0   0.0   0.0  -4.8   0.0  -1.00   0.0

                        #CRUISE_DEP_RAP#

                        #DESCENT_DEP_RAP#

                        #CONTINGENCY_STATISTICS#
                        CONT_Z90_FUEL CONT_Z90_TIME CONT_Z95_FUEL CONT_Z95_TIME CONT_Z99_FUEL CONT_Z99_TIME MIN_CONT_FUEL MIN_CONT_TIME CONT_STAT_OBS CONT_STAT_PERIOD CONT_STAT_HOURS CONT_STAT_MONTH PERC_CONT_FUEL PERC_CONT_TIME CONT_ACTUAL SUB_ACTUAL STAT_MIN_FUEL STAT_MIN_TIME  LMC_MIN_FUEL CONT_MEAN_FUEL CONT_MEAN_TIME ADD_CONT_FUEL ADD_MINS_FUEL ADD_MINS_TIME
                        -1            -1            -1            -1            -1            -1            -1            -1            -1               -1              -1              -1             -1             -1          -1         -1            -1            -1            -1             -1             -1        -1.000        -1.000            -1

                        #CONTINGENCY_RESULTS#
                        CONT_ACTUAL   SUB_ACTUAL CONT_FUEL   ERA_LAT    ERA_LON    ERA_RADIUS CONT_INPUT    SUB_INPUT
                        MINCONT      -1         138         17583686   3857924    77453.2    PERCENT       5

                        #RCL_CONT_RESULTS#
                        CONT_ACTUAL   SUB_ACTUAL CONT_FUEL
                        -1           -1         -1

                        #RAP_CONT_RESULTS#
                        CONT_ACTUAL   SUB_ACTUAL CONT_FUEL   ERA_LAT    ERA_LON    ERA_RADIUS
                        -1           -1         -1          -1         -1         -1.0

                        #EXTRA_RESULTS#
                        SPEED_IND EXTRA_STAT_MEAN EXTRA_STAT_STD_DEV EXTRA_STAT_OBS EXTRA_STAT_PERIOD EF90        EF95        EF99        NO_EXTRA_PERC
                        NORMAL    -1.0000         -1.0000            -1             -1                999999.9990 999999.9990 999999.9990 -1

                        #ATC_HOLDING#
                        NUM_ROWS            0
                        WPT_ID  ETA         REQ_HOLD ATA         ACT_HOLD LOOP CONFLICT
                        #END_ATC_HOLDING#

                        #SPECIAL_HOLDING#
                        ATC_HOLD_TIME   WX_HOLD_TIME
                        0               0
                        #END_SPECIAL_HOLDING#

                        #ENROUTE_ALTERNATES#
                        NUMBER_AIRPORTS     0

                        #RAP_ERA#
                        NUMBER_AIRPORTS     0

                        #VSOPS_STANDARD_CALCULATION#
                        COST_INDEX  MACH  TRIP_FUEL  TRIP_TIME
                        -1 -1.00         -1         -1

                        FLIGHTLEVELS 0

                        #1X_EQUAL_TIME_POINT#
                        DISTANCE   EET
                        -1         -1

                        #POINT_OF_NO_RETURN#
                        DISTANCE   EET
                        -1         -1

                        #AIRSPACES#
                        NUMBER_AIRSPACES    19
                        AIRSPACE_ID ICAO AIRSPACE_NAME                  TYP SUB  D_ENTRY T_ENTRY   D_EXIT  T_EXIT LAT_ENTRY LON_ENTRY  LAT_EXIT  LON_EXIT      GCD DIST_FLOWN I18  ENTRY_ID   EXIT_ID
                        54656       -1   COLLECTIVE_ADDRESS_AFTN        A   S          0       0    74806     459  18011990   3085364  17893313   3335049    61798      74806   0    955397   2067078
                        54903       -1   EUROCONTROL/GERMANY            C   -          0       0   387266    2298  18011990   3085364  17407362   4242991   299267     387266   0    955397    955401
                        30054173    -1   LANGEN_FIR_(RAD)               D   X          0       0   181807     929  18011990   3085364  17662792   3731820   168664     181807   0    955397    854536
                        30130571    -1   RAD-ED_EDGGADF                 D   X          0       0    30524     242  18011990   3085364  17961794   3142372    19212      30524   0    955397   2124385
                        2           EDGG LANGEN_FIR                     F   -          0       0    74806     459  18011990   3085364  17893313   3335049    61798      74806   0    955397   2067078
                        30187066    -1   EUM                            K   A          0       0   387266    2298  18011990   3085364  17407362   4242991   299267     387266   0    955397    955401
                        30188779    -1   AEA_RESTR_AS_E195_MAA_OZONE    R   D          0       0   387266    2298  18011990   3085364  17407362   4242991   299267     387266   0    955397    955401
                        2100000039  -1   HENAND1                        R   T          0       0   133506     714  18011990   3085364  17767778   3554645   120406     133506   0    955397    854536
                        61514       -1   IFPS_REGION_NORTH              e   I          0       0   387266    2298  18011990   3085364  17407362   4242991   299267     392726   0    955397    955401
                        61514       -1   IFPS_REGION_NORTH              e   I          0       0   387266    2298  18011990   3085364  17407362   4242991   299267     381806   0    955397    955401
                        54657       -1   RHEIN_UAC                      A   S      74806     459   254070    1256  17893313   3335049  17498748   3984758   179204     179264   0   2067078   2142836
                        30111048    -1   ED-RAD_EDUUCNTR_(EDUUUAC)      R   U      74806     459    83540     498  17893313   3335049  17874708   3367922     8734       8734   0   2067078   2067078
                        54490       EDUU RHEIN_UIR                      U   -      74806     459   254070    1256  17893313   3335049  17498748   3984758   179204     179264   1   2067078   2142836
                        30174090    -1   KARLSRUHE_UAC_EDUUWUR14_SECTOR D   X      80356     484   181806     929  17881494   3355946  17662794   3731817   101445     101450   0   2067078    854536
                        120158      -1   RVSM_EUR_C                     D   V     103053     584   240441    1192  17833048   3441113  17531441   3939975   137374     137388   0   2067078   2142836
                        54656       -1   COLLECTIVE_ADDRESS_AFTN        A   S     254070    1256   387266    2298  17498748   3984758  17407362   4242991    59974     134835   0   2142836    955401
                        54656       -1   COLLECTIVE_ADDRESS_AFTN        A   S     254070    1256   387266    2298  17498748   3984758  17407362   4242991    59974     131558   0   2142836    955401
                        1           EDMM MUNICH_FIR                     F   -     254070    1256   387266    2298  17498748   3984758  17407362   4242991    59974     134835   1   2142836    955401
                        1           EDMM MUNICH_FIR                     F   -     254070    1256   387266    2298  17498748   3984758  17407362   4242991    59974     131558   0   2142836    955401

                        #AIRSPACES_DEST_ALTN#

                        #ALTN1#
                        NUMBER_AIRSPACES    0

                        #ALTN2#
                        NUMBER_AIRSPACES    0

                        #ALTN3#
                        NUMBER_AIRSPACES    0

                        #ALTN4#
                        NUMBER_AIRSPACES    0

                        #AIRSPACES_DPA#
                        NUMBER_AIRSPACES    0

                        #FREEFLIGHT#
                        NUMBER_FF_WPTS      0

                        #MINI_OFP#
                        NUMBER_MINI_OFP     0
                        #END_MINI_OFP#

                        #TERRAIN_CLEARANCE_CHECK#
                        TERR_CLEAR_CALC                0           0           0
                        TERR_CLEAR_WPT                -1          -1          -1
                        TERR_CLEAR_ALT            -1.000      -1.000      -1.000
                        TERR_CLEAR_ISA           -99.000     -99.000     -99.000
                        TERR_CLEAR_MALTOW         -1.000      -1.000      -1.000
                        TERR_CLEAR_TOW            -1.000      -1.000      -1.000
                        #END_TERRAIN_CLEARANCE_CHECK#</Content>
                </OutputFile>
                <OutputFile>
                    <ContentChecksum method="MD5">1AE282D0E19B75499E7577B155078BF9</ContentChecksum>
                    <FileName>OPTLog.dat:1</FileName>
                    <Content><![CDATA[<?xml version="1.0" encoding="UTF-8"?>
                        <OPT_LOG>
                            <ROUTOPT>
                                <FLIGHT_EVENTS>
                                    <FLIGHT_EVENT>
                                        <ID>0</ID>
                                        <USER_CALC_TIME>1457435471</USER_CALC_TIME>
                                        <TRAJECTORY_CALC_TIME>1456827360</TRAJECTORY_CALC_TIME>
                                        <RECALC>
                                            <TYPE>-1</TYPE>
                                            <VALUE>-</VALUE>
                                            <DESCR>-</DESCR>
                                        </RECALC>
                                        <USED_PROGNOSIS>
                                            <PROGNOSIS>
                                                <DATE>0</DATE>
                                                <FORECAST>-1</FORECAST>
                                                <OBSERVATION>-1</OBSERVATION>
                                            </PROGNOSIS>
                                        </USED_PROGNOSIS>
                                    </FLIGHT_EVENT>
                                </FLIGHT_EVENTS>
                                <ADDITIONAL_INFO>
                                    <OTS_FILE_HASH>755ded1fec3fc32a1f5f5b8a1ca443c1</OTS_FILE_HASH>
                                </ADDITIONAL_INFO>
                            </ROUTOPT>
                            <VERTOPT>
                                <FLIGHT_EVENTS>
                                    <FLIGHT_EVENT>
                                        <ID>0</ID>
                                        <USER_CALC_TIME>1457435475</USER_CALC_TIME>
                                        <TRAJECTORY_CALC_TIME>1456827360</TRAJECTORY_CALC_TIME>
                                        <RECALC>
                                            <TYPE>-1</TYPE>
                                            <VALUE>-</VALUE>
                                            <DESCR>-</DESCR>
                                        </RECALC>
                                        <USED_PROGNOSIS>
                                            <PROGNOSIS>
                                                <DATE>0</DATE>
                                                <FORECAST>-1</FORECAST>
                                                <OBSERVATION>-1</OBSERVATION>
                                            </PROGNOSIS>
                                        </USED_PROGNOSIS>
                                    </FLIGHT_EVENT>
                                </FLIGHT_EVENTS>
                            </VERTOPT>
                        </OPT_LOG>]]></Content>
                </OutputFile>
                <OutputFile>
                    <ContentChecksum method="MD5">EB2EDA6E6D8253851A8971F641F81AB3</ContentChecksum>
                    <FileName>TerrAnaRES.dat:1</FileName>
                    <Content>#TERRANARES#
                        VERSION                     1.3
                        CALCULATION_TIME            08-Mar-2016_11:11:15
                        CALCULATION_WS              f33f27d7bef2
                        CALCULATION_USER            root
                        #LIST_OF_ESCAPE_AIRPORTS#
                        NUMBER_OF_ESCP_AIRP         0
                        #END_LIST_OF_ESCAPE_AIRPORTS#
                        #END_TERRANARES#</Content>
                </OutputFile>
                <OutputFile>
                    <ContentChecksum method="MD5">7D230B55FC8DA692D33011005E952326</ContentChecksum>
                    <FileName>CpuInfo.dat:1</FileName>
                    <Content>FILE_VERSION        1.0.0
                        ROUTOPT_TIME        6
                        ROUTOPT_CPU         6.320
                        ROUTOPT_ERR         0
                        VERTOPT_TIME        1
                        VERTOPT_CPU         1.420
                        VERTOPT_ERR         0</Content>
                </OutputFile>
            </OutputFileList>
        </CalculationJobResult>
    </CalculationJob>
</OfpCalculationJobResult>