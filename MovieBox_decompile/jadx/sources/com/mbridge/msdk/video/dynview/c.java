package com.mbridge.msdk.video.dynview;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;

public class c {

    private Context f38138a;

    private String f38139b;

    private int f38140c;

    private float f38141d;

    private float f38142e;

    private int f38143f;

    private int f38144g;

    private View f38145h;

    private List<CampaignEx> f38146i;

    private int f38147j;

    private boolean f38148k;

    private List<String> f38149l;

    private int f38150m;

    private String f38151n;

    private int f38152o;

    private int f38153p;

    private String f38154q;

    public static class b implements InterfaceC0531c {

        private Context f38155a;

        private String f38156b;

        private int f38157c;

        private float f38158d;

        private float f38159e;

        private int f38160f;

        private int f38161g;

        private View f38162h;

        private List<CampaignEx> f38163i;

        private int f38164j;

        private boolean f38165k;

        private List<String> f38166l;

        private int f38167m;

        private String f38168n;

        private int f38169o;

        private int f38170p = 1;

        private String f38171q;

        @Override
        public c build() {
            return new c(this);
        }

        @Override
        public InterfaceC0531c fileDirs(List<String> list) {
            this.f38166l = list;
            return this;
        }

        @Override
        public InterfaceC0531c orientation(int i10) {
            this.f38160f = i10;
            return this;
        }

        @Override
        public InterfaceC0531c a(Context context) {
            this.f38155a = context.getApplicationContext();
            return this;
        }

        @Override
        public InterfaceC0531c b(int i10) {
            this.f38157c = i10;
            return this;
        }

        @Override
        public InterfaceC0531c c(String str) {
            this.f38156b = str;
            return this;
        }

        @Override
        public InterfaceC0531c d(int i10) {
            this.f38167m = i10;
            return this;
        }

        @Override
        public InterfaceC0531c e(int i10) {
            this.f38170p = i10;
            return this;
        }

        @Override
        public InterfaceC0531c f(int i10) {
            this.f38169o = i10;
            return this;
        }

        @Override
        public InterfaceC0531c a(float f10) {
            this.f38159e = f10;
            return this;
        }

        @Override
        public InterfaceC0531c b(float f10) {
            this.f38158d = f10;
            return this;
        }

        @Override
        public InterfaceC0531c c(int i10) {
            this.f38161g = i10;
            return this;
        }

        @Override
        public InterfaceC0531c a(View view) {
            this.f38162h = view;
            return this;
        }

        @Override
        public InterfaceC0531c b(String str) {
            this.f38171q = str;
            return this;
        }

        @Override
        public InterfaceC0531c a(List<CampaignEx> list) {
            this.f38163i = list;
            return this;
        }

        @Override
        public InterfaceC0531c a(int i10) {
            this.f38164j = i10;
            return this;
        }

        @Override
        public InterfaceC0531c a(boolean z10) {
            this.f38165k = z10;
            return this;
        }

        @Override
        public InterfaceC0531c a(String str) {
            this.f38168n = str;
            return this;
        }
    }

    public interface InterfaceC0531c {
        InterfaceC0531c a(float f10);

        InterfaceC0531c a(int i10);

        InterfaceC0531c a(Context context);

        InterfaceC0531c a(View view);

        InterfaceC0531c a(String str);

        InterfaceC0531c a(List<CampaignEx> list);

        InterfaceC0531c a(boolean z10);

        InterfaceC0531c b(float f10);

        InterfaceC0531c b(int i10);

        InterfaceC0531c b(String str);

        c build();

        InterfaceC0531c c(int i10);

        InterfaceC0531c c(String str);

        InterfaceC0531c d(int i10);

        InterfaceC0531c e(int i10);

        InterfaceC0531c f(int i10);

        InterfaceC0531c fileDirs(List<String> list);

        InterfaceC0531c orientation(int i10);
    }

    public static b a() {
        return new b();
    }

    public List<CampaignEx> b() {
        return this.f38146i;
    }

    public Context c() {
        return this.f38138a;
    }

    public List<String> d() {
        return this.f38149l;
    }

    public int e() {
        return this.f38152o;
    }

    public String f() {
        return this.f38139b;
    }

    public int g() {
        return this.f38140c;
    }

    public int h() {
        return this.f38143f;
    }

    public View i() {
        return this.f38145h;
    }

    public int j() {
        return this.f38144g;
    }

    public float k() {
        return this.f38141d;
    }

    public int l() {
        return this.f38147j;
    }

    public float m() {
        return this.f38142e;
    }

    public String n() {
        return this.f38154q;
    }

    public int o() {
        return this.f38153p;
    }

    public boolean p() {
        return this.f38148k;
    }

    private c(b bVar) {
        this.f38142e = bVar.f38159e;
        this.f38141d = bVar.f38158d;
        this.f38143f = bVar.f38160f;
        this.f38144g = bVar.f38161g;
        this.f38138a = bVar.f38155a;
        this.f38139b = bVar.f38156b;
        this.f38140c = bVar.f38157c;
        this.f38145h = bVar.f38162h;
        this.f38146i = bVar.f38163i;
        this.f38147j = bVar.f38164j;
        this.f38148k = bVar.f38165k;
        this.f38149l = bVar.f38166l;
        this.f38150m = bVar.f38167m;
        this.f38151n = bVar.f38168n;
        this.f38152o = bVar.f38169o;
        this.f38153p = bVar.f38170p;
        this.f38154q = bVar.f38171q;
    }
}
