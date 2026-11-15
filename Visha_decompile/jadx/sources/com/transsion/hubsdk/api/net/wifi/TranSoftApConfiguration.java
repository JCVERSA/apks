package com.transsion.hubsdk.api.net.wifi;

import android.net.MacAddress;
import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public final class TranSoftApConfiguration {
    public static final int BAND_2GHZ = 1;
    public static final int BAND_5GHZ = 2;
    public static final int BAND_6GHZ = 4;
    public static final int BAND_ANY = 7;
    public static final long DEFAULT_TIMEOUT = -1;
    private static final int MAX_CH_2G_BAND = 14;
    private static final int MAX_CH_5G_BAND = 196;
    private static final int MAX_CH_6G_BAND = 253;
    private static final int MIN_CH_2G_BAND = 1;
    private static final int MIN_CH_5G_BAND = 34;
    private static final int MIN_CH_6G_BAND = 1;
    static final int PSK_MAX_LEN = 63;
    static final int PSK_MIN_LEN = 8;
    public static final int SECURITY_TYPE_OPEN = 0;
    public static final int SECURITY_TYPE_WPA2_PSK = 1;
    public static final int SECURITY_TYPE_WPA3_SAE = 3;
    public static final int SECURITY_TYPE_WPA3_SAE_TRANSITION = 2;
    private static final String TAG = "TranSoftApConfiguration";
    private final List<MacAddress> mAllowedClientList;
    private final boolean mAutoShutdownEnabled;
    private final int mBand;
    private final List<MacAddress> mBlockedClientList;
    private final MacAddress mBssid;
    private final int mChannel;
    private final boolean mClientControlByUser;
    private final boolean mHiddenSsid;
    private final int mMaxNumberOfClients;
    private final String mPassphrase;
    private final int mSecurityType;
    private final long mShutdownTimeoutMillis;
    private final String mSsid;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BandType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SecurityType {
    }

    public TranSoftApConfiguration(String str, MacAddress macAddress, String str2, boolean z, int i, int i2, int i3, int i4, boolean z2, long j, boolean z3, List<MacAddress> list, List<MacAddress> list2) {
        this.mSsid = str;
        this.mBssid = macAddress;
        this.mPassphrase = str2;
        this.mHiddenSsid = z;
        this.mBand = i;
        this.mChannel = i2;
        this.mSecurityType = i3;
        this.mMaxNumberOfClients = i4;
        this.mAutoShutdownEnabled = z2;
        this.mShutdownTimeoutMillis = j;
        this.mClientControlByUser = z3;
        this.mBlockedClientList = new ArrayList(list);
        this.mAllowedClientList = new ArrayList(list2);
    }

    public static boolean isBandValid(int i) {
        return i != 0 && (i & (-8)) == 0;
    }

    public static boolean isChannelBandPairValid(int i, int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4 || i < 1 || i > MAX_CH_6G_BAND) {
                    return false;
                }
            } else if (i < 34 || i > 196) {
                return false;
            }
        } else if (i < 1 || i > 14) {
            return false;
        }
        return true;
    }

    public List<MacAddress> getAllowedClientList() {
        return this.mAllowedClientList;
    }

    public int getBand() {
        return this.mBand;
    }

    public List<MacAddress> getBlockedClientList() {
        return this.mBlockedClientList;
    }

    public MacAddress getBssid() {
        return this.mBssid;
    }

    public int getChannel() {
        return this.mChannel;
    }

    public int getMaxNumberOfClients() {
        return this.mMaxNumberOfClients;
    }

    public String getPassphrase() {
        return this.mPassphrase;
    }

    public int getSecurityType() {
        return this.mSecurityType;
    }

    public long getShutdownTimeoutMillis() {
        return this.mShutdownTimeoutMillis;
    }

    public String getSsid() {
        return this.mSsid;
    }

    public boolean isAutoShutdownEnabled() {
        return this.mAutoShutdownEnabled;
    }

    public boolean isClientControlByUserEnabled() {
        return this.mClientControlByUser;
    }

    public boolean isHiddenSsid() {
        return this.mHiddenSsid;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ssid=");
        sb.append(this.mSsid);
        if (this.mBssid != null) {
            sb.append(" \n bssid=");
            sb.append(this.mBssid.toString());
        }
        sb.append(" \n Passphrase =");
        sb.append(TextUtils.isEmpty(this.mPassphrase) ? "<empty>" : "<non-empty>");
        sb.append(" \n HiddenSsid =");
        sb.append(this.mHiddenSsid);
        sb.append(" \n Band =");
        sb.append(this.mBand);
        sb.append(" \n Channel =");
        sb.append(this.mChannel);
        sb.append(" \n SecurityType=");
        sb.append(getSecurityType());
        sb.append(" \n MaxClient=");
        sb.append(this.mMaxNumberOfClients);
        sb.append(" \n AutoShutdownEnabled=");
        sb.append(this.mAutoShutdownEnabled);
        sb.append(" \n ShutdownTimeoutMillis=");
        sb.append(this.mShutdownTimeoutMillis);
        sb.append(" \n ClientControlByUser=");
        sb.append(this.mClientControlByUser);
        sb.append(" \n BlockedClientList=");
        sb.append(this.mBlockedClientList);
        sb.append(" \n AllowedClientList=");
        sb.append(this.mAllowedClientList);
        return sb.toString();
    }

    public static final class Builder {
        private List<MacAddress> mAllowedClientList;
        private boolean mAutoShutdownEnabled;
        private int mBand;
        private List<MacAddress> mBlockedClientList;
        private MacAddress mBssid;
        private int mChannel;
        private boolean mClientControlByUser;
        private boolean mHiddenSsid;
        private int mMaxNumberOfClients;
        private String mPassphrase;
        private int mSecurityType;
        private long mShutdownTimeoutMillis;
        private String mSsid;

        public Builder() {
            this.mSsid = null;
            this.mBssid = null;
            this.mPassphrase = null;
            this.mHiddenSsid = false;
            this.mBand = 1;
            this.mChannel = 0;
            this.mMaxNumberOfClients = 0;
            this.mSecurityType = 0;
            this.mAutoShutdownEnabled = true;
            this.mShutdownTimeoutMillis = -1L;
            this.mClientControlByUser = false;
            this.mBlockedClientList = new ArrayList();
            this.mAllowedClientList = new ArrayList();
        }

        public TranSoftApConfiguration build() {
            return new TranSoftApConfiguration(this.mSsid, this.mBssid, this.mPassphrase, this.mHiddenSsid, this.mBand, this.mChannel, this.mSecurityType, this.mMaxNumberOfClients, this.mAutoShutdownEnabled, this.mShutdownTimeoutMillis, this.mClientControlByUser, this.mBlockedClientList, this.mAllowedClientList);
        }

        public Builder setAllowedClientList(List<MacAddress> list) {
            this.mAllowedClientList = new ArrayList(list);
            return this;
        }

        public Builder setAutoShutdownEnabled(boolean z) {
            this.mAutoShutdownEnabled = z;
            return this;
        }

        public Builder setBand(int i) {
            this.mBand = i;
            this.mChannel = 0;
            return this;
        }

        public Builder setBlockedClientList(List<MacAddress> list) {
            this.mBlockedClientList = new ArrayList(list);
            return this;
        }

        public Builder setBssid(MacAddress macAddress) {
            this.mBssid = macAddress;
            return this;
        }

        public Builder setChannel(int i, int i2) {
            this.mBand = i2;
            this.mChannel = i;
            return this;
        }

        public Builder setClientControlByUserEnabled(boolean z) {
            this.mClientControlByUser = z;
            return this;
        }

        public Builder setHiddenSsid(boolean z) {
            this.mHiddenSsid = z;
            return this;
        }

        public Builder setMaxNumberOfClients(int i) {
            this.mMaxNumberOfClients = i;
            return this;
        }

        public Builder setPassphrase(String str, int i) {
            this.mSecurityType = i;
            this.mPassphrase = str;
            return this;
        }

        public Builder setShutdownTimeoutMillis(long j) {
            this.mShutdownTimeoutMillis = j;
            return this;
        }

        public Builder setSsid(String str) {
            this.mSsid = str;
            return this;
        }

        public Builder(TranSoftApConfiguration tranSoftApConfiguration) {
            this.mSsid = tranSoftApConfiguration.mSsid;
            this.mBssid = tranSoftApConfiguration.mBssid;
            this.mPassphrase = tranSoftApConfiguration.mPassphrase;
            this.mHiddenSsid = tranSoftApConfiguration.mHiddenSsid;
            this.mBand = tranSoftApConfiguration.mBand;
            this.mChannel = tranSoftApConfiguration.mChannel;
            this.mMaxNumberOfClients = tranSoftApConfiguration.mMaxNumberOfClients;
            this.mSecurityType = tranSoftApConfiguration.mSecurityType;
            this.mAutoShutdownEnabled = tranSoftApConfiguration.mAutoShutdownEnabled;
            this.mShutdownTimeoutMillis = tranSoftApConfiguration.mShutdownTimeoutMillis;
            this.mClientControlByUser = tranSoftApConfiguration.mClientControlByUser;
            this.mBlockedClientList = new ArrayList(tranSoftApConfiguration.mBlockedClientList);
            this.mAllowedClientList = new ArrayList(tranSoftApConfiguration.mAllowedClientList);
        }
    }
}
