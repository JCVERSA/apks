package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

@Keep
public class PlayerSpeedConfigBean {

    @SerializedName("disable_speed_list")
    private List<Float> disable_speed_list;

    @SerializedName("enable_max_speed")
    public float enable_max_speed;

    @SerializedName("enable_min_speed")
    public float enable_min_speed;

    @SerializedName(CommonUrlParts.MODEL)
    private String model;

    @SerializedName("player_kernel_list")
    private List<String> player_kernel_list;

    public List<Float> getDisableSpeedList() {
        return this.disable_speed_list;
    }

    public String getModel() {
        return this.model;
    }

    public List<String> getPlayerKernelList() {
        return this.player_kernel_list;
    }

    public String toString() {
        return "PlayerSpeedConfigBean{model='" + this.model + "', player_kernel_list=" + this.player_kernel_list + ", disable_speed_list=" + this.disable_speed_list + ", enable_min_speed=" + this.enable_min_speed + ", enable_max_speed=" + this.enable_max_speed + '}';
    }
}
