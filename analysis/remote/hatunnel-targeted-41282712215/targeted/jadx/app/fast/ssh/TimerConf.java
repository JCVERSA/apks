package app.fast.ssh;

public class TimerConf {
    public final String action_text;
    public final String button_text;
    public final int cool_min;
    public final int max_hours;
    public final String message_text;
    public final int per_hours;

    public TimerConf(String str, String str2, String str3, int i, int i2, int i3) {
        this.action_text = str;
        this.message_text = str2;
        this.button_text = str3;
        this.max_hours = i;
        this.per_hours = i2;
        this.cool_min = i3;
    }
}
