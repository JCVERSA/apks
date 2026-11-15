package com.transsion.cloud_drive.base.api.model;

import com.hunantv.media.player.subtitle.MediaFormat;
import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0003\u0010\b\u001a\u00020\t\u0012\b\b\u0003\u0010\n\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0003\u0010\f\u001a\u00020\t\u0012\b\b\u0003\u0010\r\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u000f\u001a\u00020\t¢\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\tHÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\tHÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\tHÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003Jw\u0010*\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00032\b\b\u0003\u0010\u0007\u001a\u00020\u00032\b\b\u0003\u0010\b\u001a\u00020\t2\b\b\u0003\u0010\n\u001a\u00020\u00032\b\b\u0003\u0010\u000b\u001a\u00020\u00032\b\b\u0003\u0010\f\u001a\u00020\t2\b\b\u0003\u0010\r\u001a\u00020\u00052\b\b\u0003\u0010\u000e\u001a\u00020\u00052\b\b\u0003\u0010\u000f\u001a\u00020\tHÆ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\tHÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0011\u0010\u000f\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0012R\u0011\u0010\f\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017¨\u00060"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;", "", "productId", "", "cloudSpaceSize", "", "price", "currencyDisplayFormat", "effectiveDays", "", "desc", "priceId", "type", "startTime", "endTime", MediaFormat.KEY_LEVEL, "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJJI)V", "getCloudSpaceSize", "()J", "getCurrencyDisplayFormat", "()Ljava/lang/String;", "getDesc", "getEffectiveDays", "()I", "getEndTime", "getLevel", "getPrice", "getPriceId", "getProductId", "getStartTime", "getType", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CloudProductModel {
    private final long cloudSpaceSize;
    private final String currencyDisplayFormat;
    private final String desc;
    private final int effectiveDays;
    private final long endTime;
    private final int level;
    private final String price;
    private final String priceId;
    private final String productId;
    private final long startTime;
    private final int type;

    public CloudProductModel() {
        this(null, 0L, null, null, 0, null, null, 0, 0L, 0L, 0, 2047, null);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final int getLevel() {
        return this.level;
    }

    public final long getCloudSpaceSize() {
        return this.cloudSpaceSize;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getCurrencyDisplayFormat() {
        return this.currencyDisplayFormat;
    }

    public final int getEffectiveDays() {
        return this.effectiveDays;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getPriceId() {
        return this.priceId;
    }

    public final int getType() {
        return this.type;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final CloudProductModel copy(@v95(name = "productId") String productId, @v95(name = "cloudSpaceSize") long cloudSpaceSize, @v95(name = "price") String price, @v95(name = "currencyDisplayFormat") String currencyDisplayFormat, @v95(name = "effectiveDays") int effectiveDays, @v95(name = "desc") String desc, @v95(name = "priceId") String priceId, @v95(name = "type") int type, @v95(name = "startTime") long startTime, @v95(name = "endTime") long endTime, @v95(name = MediaFormat.KEY_LEVEL) int level) {
        y45.j(productId, "productId");
        y45.j(price, "price");
        y45.j(currencyDisplayFormat, "currencyDisplayFormat");
        y45.j(desc, "desc");
        y45.j(priceId, "priceId");
        return new CloudProductModel(productId, cloudSpaceSize, price, currencyDisplayFormat, effectiveDays, desc, priceId, type, startTime, endTime, level);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudProductModel)) {
            return false;
        }
        CloudProductModel cloudProductModel = (CloudProductModel) other;
        return y45.e(this.productId, cloudProductModel.productId) && this.cloudSpaceSize == cloudProductModel.cloudSpaceSize && y45.e(this.price, cloudProductModel.price) && y45.e(this.currencyDisplayFormat, cloudProductModel.currencyDisplayFormat) && this.effectiveDays == cloudProductModel.effectiveDays && y45.e(this.desc, cloudProductModel.desc) && y45.e(this.priceId, cloudProductModel.priceId) && this.type == cloudProductModel.type && this.startTime == cloudProductModel.startTime && this.endTime == cloudProductModel.endTime && this.level == cloudProductModel.level;
    }

    public final long getCloudSpaceSize() {
        return this.cloudSpaceSize;
    }

    public final String getCurrencyDisplayFormat() {
        return this.currencyDisplayFormat;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getEffectiveDays() {
        return this.effectiveDays;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final int getLevel() {
        return this.level;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getPriceId() {
        return this.priceId;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((((((((((((((((this.productId.hashCode() * 31) + Long.hashCode(this.cloudSpaceSize)) * 31) + this.price.hashCode()) * 31) + this.currencyDisplayFormat.hashCode()) * 31) + Integer.hashCode(this.effectiveDays)) * 31) + this.desc.hashCode()) * 31) + this.priceId.hashCode()) * 31) + Integer.hashCode(this.type)) * 31) + Long.hashCode(this.startTime)) * 31) + Long.hashCode(this.endTime)) * 31) + Integer.hashCode(this.level);
    }

    public String toString() {
        return "CloudProductModel(productId=" + this.productId + ", cloudSpaceSize=" + this.cloudSpaceSize + ", price=" + this.price + ", currencyDisplayFormat=" + this.currencyDisplayFormat + ", effectiveDays=" + this.effectiveDays + ", desc=" + this.desc + ", priceId=" + this.priceId + ", type=" + this.type + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", level=" + this.level + ")";
    }

    public CloudProductModel(@v95(name = "productId") String str, @v95(name = "cloudSpaceSize") long j, @v95(name = "price") String str2, @v95(name = "currencyDisplayFormat") String str3, @v95(name = "effectiveDays") int i, @v95(name = "desc") String str4, @v95(name = "priceId") String str5, @v95(name = "type") int i2, @v95(name = "startTime") long j2, @v95(name = "endTime") long j3, @v95(name = MediaFormat.KEY_LEVEL) int i3) {
        y45.j(str, "productId");
        y45.j(str2, "price");
        y45.j(str3, "currencyDisplayFormat");
        y45.j(str4, "desc");
        y45.j(str5, "priceId");
        this.productId = str;
        this.cloudSpaceSize = j;
        this.price = str2;
        this.currencyDisplayFormat = str3;
        this.effectiveDays = i;
        this.desc = str4;
        this.priceId = str5;
        this.type = i2;
        this.startTime = j2;
        this.endTime = j3;
        this.level = i3;
    }

    public CloudProductModel(String str, long j, String str2, String str3, int i, String str4, String str5, int i2, long j2, long j3, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? "" : str, (i4 & 2) != 0 ? 0L : j, (i4 & 4) != 0 ? "" : str2, (i4 & 8) != 0 ? "" : str3, (i4 & 16) != 0 ? 0 : i, (i4 & 32) != 0 ? "" : str4, (i4 & 64) == 0 ? str5 : "", (i4 & 128) != 0 ? 0 : i2, (i4 & 256) != 0 ? 0L : j2, (i4 & 512) == 0 ? j3 : 0L, (i4 & 1024) == 0 ? i3 : 0);
    }
}
