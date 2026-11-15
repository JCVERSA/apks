package org.proninyaroslav.libretorrent.core.model.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BinaryOperator;
import org.libtorrent4j.AnnounceEndpoint;
import org.libtorrent4j.AnnounceEntry;
import org.libtorrent4j.AnnounceInfohash;
import org.libtorrent4j.swig.error_code;
import org.proninyaroslav.libretorrent.core.model.data.TrackerInfo;

public class TrackerInfo extends AbstractInfoParcel {
    public static final Parcelable.Creator<TrackerInfo> CREATOR = new Parcelable.Creator<TrackerInfo>() {
        @Override
        public TrackerInfo createFromParcel(Parcel parcel) {
            return new TrackerInfo(parcel);
        }

        @Override
        public TrackerInfo[] newArray(int i) {
            return new TrackerInfo[i];
        }
    };
    public String message;
    public int status;
    public int tier;
    public String url;

    public class Result {
        public int a;
        public String b;

        public Result(int i, String str) {
            this.a = i;
            this.b = str;
        }
    }

    public static class Status {
    }

    public TrackerInfo(AnnounceEntry announceEntry) {
        super(announceEntry.url());
        this.url = announceEntry.url();
        this.tier = announceEntry.tier();
        Result messageAndStatus = getMessageAndStatus(announceEntry, announceEntry.endpoints());
        this.message = messageAndStatus.b;
        this.status = messageAndStatus.a;
    }

    private void calcStatusCount(AnnounceEntry announceEntry, AnnounceInfohash announceInfohash, Map<Integer, Integer> map) {
        int iInfoHashStatus = infoHashStatus(announceEntry, announceInfohash);
        map.put(Integer.valueOf(iInfoHashStatus), Integer.valueOf(map.getOrDefault(Integer.valueOf(iInfoHashStatus), 0).intValue() + 1));
    }

    private Result getMessageAndStatus(AnnounceEntry announceEntry, List<AnnounceEndpoint> list) {
        if (announceEntry == null || list.isEmpty()) {
            return new Result(-1, "");
        }
        HashMap map = new HashMap();
        String str = "";
        String strMessage = str;
        for (AnnounceEndpoint announceEndpoint : list) {
            calcStatusCount(announceEntry, announceEndpoint.infohashV1(), map);
            calcStatusCount(announceEntry, announceEndpoint.infohashV2(), map);
            if (TextUtils.isEmpty(str)) {
                String strMessage2 = announceEndpoint.infohashV1().message();
                String strMessage3 = announceEndpoint.infohashV2().message();
                if (!TextUtils.isEmpty(strMessage2)) {
                    str = strMessage2;
                } else if (!TextUtils.isEmpty(strMessage3)) {
                    str = strMessage3;
                }
            }
            if (TextUtils.isEmpty(strMessage)) {
                error_code last_error = announceEndpoint.infohashV1().swig().getLast_error();
                error_code last_error2 = announceEndpoint.infohashV2().swig().getLast_error();
                if (last_error != null && !TextUtils.isEmpty(last_error.message())) {
                    strMessage = last_error.message();
                } else if (last_error2 != null && !TextUtils.isEmpty(last_error2.message())) {
                    strMessage = last_error2.message();
                }
            }
        }
        Object objReduce = map.values().stream().reduce(0, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return TrackerInfo.lambda$getMessageAndStatus$0(obj, obj2);
            }
        });
        Integer num = (Integer) map.get(1);
        Integer num2 = (Integer) map.get(0);
        Integer num3 = (Integer) map.get(3);
        Integer num4 = (Integer) map.get(2);
        if (num != null && num.intValue() > 0) {
            return new Result(1, "");
        }
        if (num2 != null && num2.intValue() > 0) {
            return new Result(0, str);
        }
        if (num3 != null && num3.equals(objReduce)) {
            if (TextUtils.isEmpty(str)) {
                str = strMessage;
            }
            return new Result(3, str);
        }
        if (num4 == null || !num4.equals(objReduce)) {
            return new Result(-1, "");
        }
        if (TextUtils.isEmpty(str)) {
            str = strMessage;
        }
        return new Result(2, str);
    }

    private int infoHashStatus(AnnounceEntry announceEntry, AnnounceInfohash announceInfohash) {
        if (announceInfohash.updating()) {
            return 1;
        }
        if (announceInfohash.fails() > 0) {
            return 3;
        }
        return announceEntry.isVerified() ? 0 : 2;
    }

    public static Object lambda$getMessageAndStatus$0(Object obj, Object obj2) {
        return Integer.valueOf(Integer.sum(((Integer) obj).intValue(), ((Integer) obj2).intValue()));
    }

    @Override
    public int compareTo(@NonNull Object obj) {
        return this.url.compareTo(((TrackerInfo) obj).url);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof TrackerInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        TrackerInfo trackerInfo = (TrackerInfo) obj;
        String str = this.url;
        if (str != null && !str.equals(trackerInfo.url)) {
            return false;
        }
        String str2 = this.message;
        return (str2 == null || str2.equals(trackerInfo.message)) && this.tier == trackerInfo.tier && this.status == trackerInfo.status;
    }

    @Override
    public int hashCode() {
        String str = this.url;
        int iHashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.message;
        return ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.tier) * 31) + this.status;
    }

    @NonNull
    public String toString() {
        String str;
        int i = this.status;
        if (i == 0) {
            str = "WORKING";
        } else if (i == 1) {
            str = "UPDATING";
        } else if (i != 2) {
            str = i != 3 ? "UNKNOWN" : "NOT_WORKING";
        } else {
            str = "NOT_CONTACTED";
        }
        return "TrackerInfo{url='" + this.url + "', message='" + this.message + "', tier=" + this.tier + ", status=" + str + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.url);
        parcel.writeString(this.message);
        parcel.writeInt(this.tier);
        parcel.writeInt(this.status);
    }

    public TrackerInfo(String str, String str2, int i, int i2) {
        super(str);
        this.url = str;
        this.message = str2;
        this.tier = i;
        this.status = i2;
    }

    public TrackerInfo(Parcel parcel) {
        super(parcel);
        this.url = parcel.readString();
        this.message = parcel.readString();
        this.tier = parcel.readInt();
        this.status = parcel.readInt();
    }
}
