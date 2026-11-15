package com.hunantv.imgo.net.entity;

import com.mgtv.json.JsonInterface;
import java.util.List;

public class AuthInfo implements JsonInterface {
    public PayInfo pay_info;

    public static class Action implements JsonInterface {
        public static final int TAG_GET_MOVIE_TICKET = 10003;
        public static final int TAG_LOGIN = 10010;
        public static final int TAG_OPEN_VIP_PAY_PAGE = 10001;
        public static final int TAG_SINGLE_PAY_PAGE = 10002;
        public static final int TAG_USE_MOVIE_TICKET = 10004;
        public String coupon_desc;
        public int half_disp;
        public int tag;
        public String tag_ext;
        public String url;

        public boolean isHalfDisplay() {
            return this.half_disp == 1;
        }
    }

    public static class Bg implements JsonInterface {
        public String vertical_mode_bg;
        public String wide_mode_bg;
    }

    public static class Component implements JsonInterface {
        public static final String CODE_BUTTON = "button";
        public static final String CODE_LINK = "link";
        public static final String CODE_SUBTITLE = "subtitle";
        public static final String CODE_TITLE = "title";
        public Action action;
        public List<String> click;
        public String code;
        public int line_num;
        public int selected = 1;
        public List<String> show;
        public String superscript;
        public String text;
        public String tips;
    }

    public static class PayInfo implements JsonInterface {
        public SceneData preview_end;
        public SceneData preview_playing;
        public SceneData preview_starting;
    }

    public static class SceneData implements JsonInterface {
        public Bg bg;
        public List<Component> components;
    }
}
