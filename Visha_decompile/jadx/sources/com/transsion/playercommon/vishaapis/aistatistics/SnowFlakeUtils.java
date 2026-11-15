package com.transsion.playercommon.vishaapis.aistatistics;

public class SnowFlakeUtils {
    private static final long MACHINE_BIT = 5;
    private static final long MACHINE_HOUSE_BIT = 5;
    private static final long MAX_MACHINE = 31;
    private static final long MAX_MACHINE_HOUSE = 31;
    private static final long MAX_SEQUENCE = 4095;
    private static final long SEQUENCE_BIT = 12;
    private static final long START_STMP = 1637666189914L;
    private long machineHouseID;
    private long machineID;
    private long lastTime = 0;
    private long sequence = 0;

    public static class Holder {
        static SnowFlakeUtils INSTANCE = new SnowFlakeUtils(0, 0);

        private Holder() {
        }
    }

    public SnowFlakeUtils(long j, long j2) {
        this.machineID = j;
        this.machineHouseID = j2;
    }

    public static final SnowFlakeUtils getInstance() {
        return Holder.INSTANCE;
    }

    private long getNextMill() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (jCurrentTimeMillis == this.lastTime) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        return jCurrentTimeMillis;
    }

    public static void main(String[] strArr) {
        SnowFlakeUtils snowFlakeUtils = new SnowFlakeUtils(0L, 0L);
        for (int i = 0; i < 100; i++) {
            System.out.println(snowFlakeUtils.nextId());
        }
    }

    public long getMachineHouseID() {
        return this.machineHouseID;
    }

    public long getMachineID() {
        return this.machineID;
    }

    public synchronized long nextId() {
        long jCurrentTimeMillis;
        try {
            if (this.machineHouseID > 31 || this.machineID > 31) {
                throw new RuntimeException("机房ID或机器ID超出最大值");
            }
            jCurrentTimeMillis = System.currentTimeMillis();
            long j = this.lastTime;
            if (jCurrentTimeMillis < j) {
                throw new RuntimeException("当前时间为异常值，请勿回拨时间！");
            }
            if (jCurrentTimeMillis == j) {
                long j2 = (this.sequence + 1) & MAX_SEQUENCE;
                this.sequence = j2;
                if (j2 == 0) {
                    jCurrentTimeMillis = getNextMill();
                }
            } else {
                this.sequence = 0L;
            }
            this.lastTime = jCurrentTimeMillis;
        } catch (Throwable th) {
            throw th;
        }
        return ((jCurrentTimeMillis - START_STMP) << 22) | (this.machineID << SEQUENCE_BIT) | (this.machineHouseID << 17) | this.sequence;
    }

    public void setMachineHouseID(long j) {
        this.machineHouseID = j;
    }

    public void setMachineID(long j) {
        this.machineID = j;
    }
}
