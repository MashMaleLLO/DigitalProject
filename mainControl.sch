<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW1(3:0)" />
        <signal name="SW2(3:0)" />
        <signal name="DIP1(3:0)" />
        <signal name="DIP2(3:0)" />
        <signal name="CLK_P123" />
        <signal name="A_G(6:0)" />
        <signal name="Common(3:0)" />
        <signal name="LAK(15:0)" />
        <signal name="LAK(3:0)" />
        <signal name="LAK(7:4)" />
        <signal name="LAK(11:8)" />
        <signal name="LAK(15:12)" />
        <signal name="K1ForLast2DigK2ForFrist2Dig(15:0)">
            <attr value="TRUE" name="CLOCK_DIDICATED_ROUTE">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
                <trait valuetype="Boolean" />
            </attr>
        </signal>
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="PB1_P45">
            <attr value="TRUE" name="CLOCK_DEDICATED_ROUTE">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
                <trait valuetype="Boolean" />
            </attr>
        </signal>
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="Buzzer" />
        <signal name="XLXN_25" />
        <port polarity="Input" name="SW1(3:0)" />
        <port polarity="Input" name="SW2(3:0)" />
        <port polarity="Input" name="DIP1(3:0)" />
        <port polarity="Input" name="DIP2(3:0)" />
        <port polarity="Input" name="CLK_P123" />
        <port polarity="Output" name="A_G(6:0)" />
        <port polarity="Output" name="Common(3:0)" />
        <port polarity="Input" name="K1ForLast2DigK2ForFrist2Dig(15:0)" />
        <port polarity="Input" name="PB1_P45" />
        <port polarity="Output" name="Buzzer" />
        <blockdef name="segment_upgrade">
            <timestamp>2020-12-14T9:13:16</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
        </blockdef>
        <blockdef name="compm16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-384" height="320" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="segment_upgrade" name="XLXI_1">
            <blockpin signalname="CLK_P123" name="CLK_P123" />
            <blockpin signalname="SW2(3:0)" name="C2(3:0)" />
            <blockpin signalname="SW1(3:0)" name="C1(3:0)" />
            <blockpin signalname="DIP1(3:0)" name="C3(3:0)" />
            <blockpin signalname="DIP2(3:0)" name="C4(3:0)" />
            <blockpin signalname="A_G(6:0)" name="SEG_OUT(6:0)" />
            <blockpin signalname="Common(3:0)" name="COMM(3:0)" />
        </block>
        <block symbolname="compm16" name="XLXI_2">
            <blockpin signalname="LAK(15:0)" name="A(15:0)" />
            <blockpin signalname="K1ForLast2DigK2ForFrist2Dig(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_16" name="GT" />
            <blockpin signalname="XLXN_15" name="LT" />
        </block>
        <block symbolname="buf" name="XLXI_4(3:0)">
            <blockpin signalname="SW1(3:0)" name="I" />
            <blockpin signalname="LAK(3:0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5(3:0)">
            <blockpin signalname="SW2(3:0)" name="I" />
            <blockpin signalname="LAK(7:4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6(3:0)">
            <blockpin signalname="DIP1(3:0)" name="I" />
            <blockpin signalname="LAK(11:8)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7(3:0)">
            <blockpin signalname="DIP2(3:0)" name="I" />
            <blockpin signalname="LAK(15:12)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_9">
            <blockpin signalname="PB1_P45" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="XLXN_25" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_21" name="Q0" />
            <blockpin signalname="XLXN_20" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_20" name="I2" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="XLXN_25" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="3344" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <branch name="SW1(3:0)">
            <wire x2="2576" y1="896" y2="896" x1="2528" />
            <wire x2="2576" y1="896" y2="1296" x1="2576" />
            <wire x2="3344" y1="896" y2="896" x1="2576" />
        </branch>
        <branch name="DIP1(3:0)">
            <wire x2="2736" y1="1024" y2="1024" x1="2528" />
            <wire x2="2736" y1="1024" y2="1296" x1="2736" />
            <wire x2="3344" y1="1024" y2="1024" x1="2736" />
        </branch>
        <branch name="DIP2(3:0)">
            <wire x2="2816" y1="1088" y2="1088" x1="2528" />
            <wire x2="2816" y1="1088" y2="1280" x1="2816" />
            <wire x2="3344" y1="1088" y2="1088" x1="2816" />
        </branch>
        <branch name="CLK_P123">
            <wire x2="3344" y1="1152" y2="1152" x1="2528" />
        </branch>
        <branch name="A_G(6:0)">
            <wire x2="4624" y1="896" y2="896" x1="3776" />
        </branch>
        <branch name="Common(3:0)">
            <wire x2="4624" y1="960" y2="960" x1="3776" />
        </branch>
        <iomarker fontsize="28" x="2528" y="896" name="SW1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2528" y="960" name="SW2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2528" y="1024" name="DIP1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2528" y="1088" name="DIP2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2528" y="1152" name="CLK_P123" orien="R180" />
        <iomarker fontsize="28" x="4624" y="896" name="A_G(6:0)" orien="R0" />
        <iomarker fontsize="28" x="4624" y="960" name="Common(3:0)" orien="R0" />
        <instance x="3360" y="2192" name="XLXI_2" orien="R0" />
        <instance x="2544" y="1296" name="XLXI_4(3:0)" orien="R90" />
        <branch name="SW2(3:0)">
            <wire x2="2640" y1="960" y2="960" x1="2528" />
            <wire x2="3344" y1="960" y2="960" x1="2640" />
            <wire x2="2640" y1="960" y2="1296" x1="2640" />
        </branch>
        <instance x="2608" y="1296" name="XLXI_5(3:0)" orien="R90" />
        <instance x="2704" y="1296" name="XLXI_6(3:0)" orien="R90" />
        <instance x="2784" y="1280" name="XLXI_7(3:0)" orien="R90" />
        <bustap x2="2576" y1="1872" y2="1776" x1="2576" />
        <branch name="LAK(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1648" type="branch" />
            <wire x2="2576" y1="1520" y2="1648" x1="2576" />
            <wire x2="2576" y1="1648" y2="1776" x1="2576" />
        </branch>
        <bustap x2="2640" y1="1872" y2="1776" x1="2640" />
        <branch name="LAK(7:4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1648" type="branch" />
            <wire x2="2640" y1="1520" y2="1648" x1="2640" />
            <wire x2="2640" y1="1648" y2="1776" x1="2640" />
        </branch>
        <bustap x2="2736" y1="1872" y2="1776" x1="2736" />
        <branch name="LAK(11:8)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1648" type="branch" />
            <wire x2="2736" y1="1520" y2="1648" x1="2736" />
            <wire x2="2736" y1="1648" y2="1776" x1="2736" />
        </branch>
        <bustap x2="2816" y1="1872" y2="1776" x1="2816" />
        <branch name="LAK(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1640" type="branch" />
            <wire x2="2816" y1="1504" y2="1648" x1="2816" />
            <wire x2="2816" y1="1648" y2="1776" x1="2816" />
        </branch>
        <branch name="K1ForLast2DigK2ForFrist2Dig(15:0)">
            <wire x2="3344" y1="2064" y2="2064" x1="2368" />
            <wire x2="3360" y1="2064" y2="2064" x1="3344" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="3776" y1="2000" y2="2000" x1="3744" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="3776" y1="1936" y2="1936" x1="3744" />
        </branch>
        <instance x="3776" y="2064" name="XLXI_8" orien="R0" />
        <instance x="4192" y="2192" name="XLXI_9" orien="R0" />
        <branch name="PB1_P45">
            <wire x2="4176" y1="2224" y2="2224" x1="2144" />
            <wire x2="4192" y1="2064" y2="2064" x1="4176" />
            <wire x2="4176" y1="2064" y2="2224" x1="4176" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="4096" y1="1968" y2="1968" x1="4032" />
            <wire x2="4096" y1="1968" y2="2000" x1="4096" />
            <wire x2="4192" y1="2000" y2="2000" x1="4096" />
            <wire x2="4096" y1="2000" y2="2752" x1="4096" />
            <wire x2="4848" y1="2752" y2="2752" x1="4096" />
            <wire x2="4848" y1="2544" y2="2752" x1="4848" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="4848" y1="1936" y2="1936" x1="4576" />
            <wire x2="4848" y1="1936" y2="2416" x1="4848" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="4720" y1="1872" y2="1872" x1="4576" />
            <wire x2="4720" y1="1872" y2="2480" x1="4720" />
            <wire x2="4848" y1="2480" y2="2480" x1="4720" />
        </branch>
        <branch name="Buzzer">
            <wire x2="5120" y1="2480" y2="2480" x1="5104" />
            <wire x2="5216" y1="2480" y2="2480" x1="5120" />
        </branch>
        <instance x="4848" y="2608" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="5216" y="2480" name="Buzzer" orien="R0" />
        <branch name="LAK(15:0)">
            <wire x2="2640" y1="1872" y2="1872" x1="2576" />
            <wire x2="2736" y1="1872" y2="1872" x1="2640" />
            <wire x2="2816" y1="1872" y2="1872" x1="2736" />
            <wire x2="3360" y1="1872" y2="1872" x1="2816" />
        </branch>
        <instance x="4192" y="2480" name="XLXI_11" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="4192" y1="2160" y2="2176" x1="4192" />
            <wire x2="4256" y1="2176" y2="2176" x1="4192" />
            <wire x2="4256" y1="2176" y2="2352" x1="4256" />
        </branch>
        <iomarker fontsize="28" x="2368" y="2064" name="K1ForLast2DigK2ForFrist2Dig(15:0)" orien="R180" />
        <iomarker fontsize="28" x="2144" y="2224" name="PB1_P45" orien="R180" />
    </sheet>
</drawing>