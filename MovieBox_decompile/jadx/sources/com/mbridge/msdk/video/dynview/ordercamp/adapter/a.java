package com.mbridge.msdk.video.dynview.ordercamp.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBFrameLayout;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.image.c;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.io.File;
import java.util.List;
import java.util.Locale;

public class a extends BaseAdapter {

    private boolean f38212a = false;

    private b f38213b;

    private List<CampaignEx> f38214c;

    class C0533a implements c {

        final ImageView f38215a;

        final boolean f38216b;

        C0533a(ImageView imageView, boolean z10) {
            this.f38215a = imageView;
            this.f38216b = z10;
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            if (this.f38216b) {
                this.f38215a.setVisibility(8);
            }
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                this.f38215a.setImageBitmap(bitmap);
            } catch (Throwable th2) {
                o0.b("OrderCampAdapter", th2.getMessage());
            }
        }
    }

    static class b {

        RelativeLayout f38218a;

        MBRotationView f38219b;

        MBridgeImageView f38220c;

        RoundImageView f38221d;

        TextView f38222e;

        TextView f38223f;

        TextView f38224g;

        TextView f38225h;

        MBridgeLevelLayoutView f38226i;

        ImageView f38227j;

        ImageView f38228k;

        MBCusRoundImageView f38229l;

        MBCusRoundImageView f38230m;

        MBStarLevelLayoutView f38231n;

        MBHeatLevelLayoutView f38232o;

        MBFrameLayout f38233p;

        b() {
        }
    }

    public a(List<CampaignEx> list) {
        this.f38214c = list;
    }

    private void a(int i10, ViewGroup viewGroup) {
        List<CampaignEx> list = this.f38214c;
        if (list == null || this.f38213b == null || list.size() == 0) {
            return;
        }
        MBridgeImageView mBridgeImageView = this.f38213b.f38220c;
        if (mBridgeImageView != null) {
            a(mBridgeImageView, this.f38214c.get(i10).getImageUrl(), false);
        }
        ImageView imageView = this.f38213b.f38228k;
        if (imageView != null) {
            a(imageView, this.f38214c.get(i10).getImageUrl(), false);
        }
        RoundImageView roundImageView = this.f38213b.f38221d;
        if (roundImageView != null) {
            roundImageView.setBorderRadius(25);
            a(this.f38213b.f38221d, this.f38214c.get(i10).getIconUrl(), true);
        }
        double rating = this.f38214c.get(i10).getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        MBridgeLevelLayoutView mBridgeLevelLayoutView = this.f38213b.f38226i;
        if (mBridgeLevelLayoutView != null) {
            mBridgeLevelLayoutView.setRatingAndUser(rating, this.f38214c.get(i10).getNumberRating());
            this.f38213b.f38226i.setOrientation(0);
        }
        MBRotationView mBRotationView = this.f38213b.f38219b;
        if (mBRotationView != null) {
            mBRotationView.setWidthRatio(1.0f);
            this.f38213b.f38219b.setHeightRatio(1.0f);
            this.f38213b.f38219b.setAutoscroll(false);
        }
        MBridgeImageView mBridgeImageView2 = this.f38213b.f38220c;
        if (mBridgeImageView2 != null) {
            mBridgeImageView2.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
        }
    }

    private View b(int i10) throws Throwable {
        View viewA;
        String str;
        try {
            List<CampaignEx> list = this.f38214c;
            String cMPTEntryUrl = "";
            if (list == null || list.get(i10) == null) {
                str = "501";
            } else {
                str = this.f38214c.get(i10).getMof_tplid() + "";
                cMPTEntryUrl = this.f38214c.get(i10).getCMPTEntryUrl();
            }
            if (TextUtils.isEmpty(cMPTEntryUrl)) {
                return a();
            }
            int iF = k0.F(com.mbridge.msdk.foundation.controller.c.m().d());
            String strA = x.a(0, str, cMPTEntryUrl);
            if (TextUtils.isEmpty(strA)) {
                return a();
            }
            File file = new File(strA + File.separator + "template_config.json");
            if (file.isFile() && file.exists()) {
                List<String> listA = m0.a(strA, "template_" + str + "_" + iF + "_item");
                if (listA == null) {
                    return a();
                }
                viewA = a(i10, listA);
                return this.f38212a ? viewA : a();
            }
            return a();
        } catch (Exception e10) {
            o0.b("OrderCampAdapter", e10.getMessage());
            viewA = null;
        }
    }

    private int c(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), str, "id");
    }

    public int d(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    @Override
    public int getCount() {
        List<CampaignEx> list = this.f38214c;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f38214c.size();
    }

    @Override
    public Object getItem(int i10) {
        List<CampaignEx> list = this.f38214c;
        if (list != null) {
            return list.get(i10);
        }
        return null;
    }

    @Override
    public long getItemId(int i10) {
        return i10;
    }

    @Override
    public View getView(int i10, View view, ViewGroup viewGroup) throws Throwable {
        try {
            if (view == null) {
                view = b(i10);
            } else {
                this.f38213b = (b) view.getTag();
            }
            a(view);
            if (this.f38212a) {
                b(i10, viewGroup);
            } else {
                a(i10, viewGroup);
            }
            a(i10);
        } catch (Exception e10) {
            o0.b("OrderCampAdapter", e10.getMessage());
        }
        return view;
    }

    private void b(int i10, ViewGroup viewGroup) {
        List<CampaignEx> list = this.f38214c;
        if (list == null || this.f38213b == null || list.size() == 0) {
            return;
        }
        MBCusRoundImageView mBCusRoundImageView = this.f38213b.f38229l;
        if (mBCusRoundImageView != null) {
            mBCusRoundImageView.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
            a(this.f38213b.f38229l, this.f38214c.get(i10).getImageUrl(), false);
        }
        ImageView imageView = this.f38213b.f38228k;
        if (imageView != null) {
            a(imageView, this.f38214c.get(i10).getImageUrl(), false);
        }
        MBCusRoundImageView mBCusRoundImageView2 = this.f38213b.f38230m;
        if (mBCusRoundImageView2 != null) {
            mBCusRoundImageView2.setBorder(50, 20, -1);
            a(this.f38213b.f38230m, this.f38214c.get(i10).getIconUrl(), true);
        }
        double rating = this.f38214c.get(i10).getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        MBStarLevelLayoutView mBStarLevelLayoutView = this.f38213b.f38231n;
        if (mBStarLevelLayoutView != null) {
            mBStarLevelLayoutView.setRating((int) rating);
            this.f38213b.f38231n.setOrientation(0);
        }
        MBHeatLevelLayoutView mBHeatLevelLayoutView = this.f38213b.f38232o;
        if (mBHeatLevelLayoutView != null) {
            mBHeatLevelLayoutView.setHeatCount(this.f38214c.get(i10).getNumberRating());
        }
    }

    private View a(int i10, List<String> list) {
        int iF = k0.F(com.mbridge.msdk.foundation.controller.c.m().d());
        h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        View viewCreateDynamicView = DynamicViewCreator.getInstance().createDynamicView(new DyOption.Builder().campaignEx(this.f38214c.get(i10)).fileDirs(list).dyAdType(DyAdType.REWARD).orientation(iF).adChoiceLink(t0.a(this.f38214c.get(i10))).build());
        if (viewCreateDynamicView != null) {
            this.f38212a = true;
            b bVar = new b();
            this.f38213b = bVar;
            bVar.f38229l = (MBCusRoundImageView) viewCreateDynamicView.findViewById(b("mbridge_lv_iv"));
            this.f38213b.f38228k = (ImageView) viewCreateDynamicView.findViewById(b("mbridge_lv_iv_burl"));
            this.f38213b.f38230m = (MBCusRoundImageView) viewCreateDynamicView.findViewById(b("mbridge_lv_icon_iv"));
            this.f38213b.f38231n = (MBStarLevelLayoutView) viewCreateDynamicView.findViewById(b("mbridge_lv_sv_starlevel"));
            this.f38213b.f38233p = (MBFrameLayout) viewCreateDynamicView.findViewById(b("mbridge_lv_ration"));
            viewCreateDynamicView.setTag(this.f38213b);
        }
        return viewCreateDynamicView;
    }

    private int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    private View a() {
        View viewInflate = LayoutInflater.from(com.mbridge.msdk.foundation.controller.c.m().d()).inflate(d("mbridge_order_layout_item"), (ViewGroup) null);
        b bVar = new b();
        this.f38213b = bVar;
        bVar.f38220c = (MBridgeImageView) viewInflate.findViewById(c("mbridge_lv_iv"));
        this.f38213b.f38228k = (ImageView) viewInflate.findViewById(c("mbridge_lv_iv_burl"));
        this.f38213b.f38221d = (RoundImageView) viewInflate.findViewById(c("mbridge_lv_icon_iv"));
        this.f38213b.f38226i = (MBridgeLevelLayoutView) viewInflate.findViewById(c("mbridge_lv_sv_starlevel"));
        this.f38213b.f38219b = (MBRotationView) viewInflate.findViewById(c("mbridge_lv_ration"));
        viewInflate.setTag(this.f38213b);
        return viewInflate;
    }

    private void a(View view) {
        this.f38213b.f38218a = (RelativeLayout) view.findViewById(a("mbridge_lv_item_rl"));
        this.f38213b.f38222e = (TextView) view.findViewById(a("mbridge_lv_title_tv"));
        this.f38213b.f38224g = (TextView) view.findViewById(a("mbridge_lv_tv_install"));
        this.f38213b.f38232o = (MBHeatLevelLayoutView) view.findViewById(a("mbridge_lv_sv_heat_level"));
        this.f38213b.f38223f = (TextView) view.findViewById(a("mbridge_lv_desc_tv"));
        this.f38213b.f38227j = (ImageView) view.findViewById(a("mbridge_iv_flag"));
        this.f38213b.f38225h = (TextView) view.findViewById(a("mbridge_order_viewed_tv"));
    }

    private void a(ImageView imageView, String str, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            com.mbridge.msdk.foundation.same.image.b.a(imageView.getContext()).a(str, new C0533a(imageView, z10));
        } else if (z10) {
            imageView.setVisibility(8);
        }
    }

    private void a(int i10) {
        b bVar = this.f38213b;
        if (bVar != null) {
            if (bVar.f38222e != null) {
                this.f38213b.f38222e.setText(this.f38214c.get(i10).getAppName());
            }
            if (this.f38213b.f38223f != null) {
                this.f38213b.f38223f.setText(this.f38214c.get(i10).getAppDesc());
            }
            if (this.f38213b.f38224g != null) {
                String adCall = this.f38214c.get(i10).getAdCall();
                if (this.f38213b.f38224g instanceof MBridgeTextView) {
                    ((MBridgeTextView) this.f38213b.f38224g).setObjectAnimator(new com.mbridge.msdk.video.dynview.ui.b().a(this.f38213b.f38224g));
                }
                this.f38213b.f38224g.setText(adCall);
            }
            if (this.f38213b.f38227j != null) {
                try {
                    String language = Locale.getDefault().getLanguage();
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    if (contextD != null) {
                        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                            this.f38213b.f38227j.setImageDrawable(contextD.getResources().getDrawable(contextD.getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                        } else {
                            this.f38213b.f38227j.setImageDrawable(contextD.getResources().getDrawable(contextD.getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                        }
                    }
                } catch (Exception e10) {
                    o0.b("OrderCampAdapter", e10.getMessage());
                }
                t0.a(2, this.f38213b.f38227j, this.f38214c.get(i10), com.mbridge.msdk.foundation.controller.c.m().d(), false, null);
            }
            if (this.f38213b.f38225h != null) {
                try {
                    this.f38213b.f38225h.setText(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getString(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getIdentifier("mbridge_reward_viewed_text_str", "string", com.mbridge.msdk.foundation.controller.c.m().h())));
                    this.f38213b.f38225h.setVisibility(0);
                } catch (Exception e11) {
                    o0.b("OrderCampAdapter", e11.getMessage());
                }
            }
        }
    }

    private int a(String str) {
        if (this.f38212a) {
            return b(str);
        }
        return c(str);
    }
}
