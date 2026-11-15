package com.mgtv.ssp.play;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.hunantv.imgo.report.d;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.k;
import com.mgtv.ssp.R;
import com.mgtv.ssp.authbase.AccountInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PreviewEndScene extends BaseScene {
    private static final String URL_VIP_CASHIER = AccountInfo.defaultVipUrl;
    PlayErrorView.OnErrorViewCallback clicked;
    private ImageView mBgView;
    private LinearLayout mCenterLayout;

    public static final class IapType {
        public static final String OPEN_VIP = "VIPFirst";
        public static final String PAY_SINGLE_ONLY = "SingleOnly";
        public static final String PAY_SINGLE_VID = "SingleFirst";
        public static final String PAY_VIP_TIP = "VIPOnly";
    }

    private void addMultipleView(final Context context, List<AuthInfo.Component> list) {
        if (AuthInfo.Component.CODE_BUTTON.equals(list.get(0).code) && AuthInfo.Component.CODE_BUTTON.equals(list.get(1).code)) {
            final LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setGravity(17);
            linearLayout.setOrientation(0);
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
            int iDp2px = dp2px(context, 20.0f);
            marginLayoutParams.leftMargin = iDp2px;
            marginLayoutParams.rightMargin = iDp2px;
            linearLayout.setLayoutParams(marginLayoutParams);
            for (int i = 0; i < list.size() && i <= 1; i++) {
                View viewCreateView = createView(context, linearLayout, list.get(i));
                if (viewCreateView != null) {
                    if (viewCreateView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                        if (i > 0) {
                            ((ViewGroup.MarginLayoutParams) viewCreateView.getLayoutParams()).setMargins(dp2px(context, 16.0f), 0, 0, 0);
                        } else {
                            ((ViewGroup.MarginLayoutParams) viewCreateView.getLayoutParams()).setMargins(0, 0, 0, 0);
                        }
                    }
                    linearLayout.addView(viewCreateView);
                }
            }
            linearLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                @Override
                public void onGlobalLayout() {
                    try {
                        View childAt = linearLayout.getChildAt(0);
                        int i2 = R.id.tv_btn;
                        linearLayout.setPadding(((linearLayout.getMeasuredWidth() - ((TextView) childAt.findViewById(i2)).getMeasuredWidth()) - ((TextView) linearLayout.getChildAt(1).findViewById(i2)).getMeasuredWidth()) - PreviewEndScene.this.dp2px(context, 16.0f), 0, 0, PreviewEndScene.this.dp2px(context, 2.0f));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    linearLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            });
            this.mCenterLayout.addView(linearLayout);
        }
    }

    private void addSingleView(final Context context, AuthInfo.Component component) {
        final View viewCreateView = createView(context, this.mCenterLayout, component);
        if (viewCreateView == null) {
            return;
        }
        this.mCenterLayout.addView(viewCreateView);
        if (component != null && AuthInfo.Component.CODE_BUTTON.equals(component.code)) {
            viewCreateView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                @Override
                public void onGlobalLayout() {
                    try {
                        int iIndexOfChild = PreviewEndScene.this.mCenterLayout.indexOfChild(viewCreateView);
                        View view = viewCreateView;
                        int i = R.id.tv_btn;
                        TextView textView = (TextView) view.findViewById(i);
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewCreateView.getLayoutParams();
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) textView.getLayoutParams();
                        if (iIndexOfChild >= 1) {
                            View childAt = PreviewEndScene.this.mCenterLayout.getChildAt(iIndexOfChild - 1);
                            if ((childAt instanceof ViewGroup) && ((ViewGroup) childAt).getChildCount() > 1) {
                                ViewGroup viewGroup = (ViewGroup) childAt;
                                layoutParams2.width = ((TextView) viewGroup.getChildAt(0).findViewById(i)).getMeasuredWidth() + ((TextView) viewGroup.getChildAt(1).findViewById(i)).getMeasuredWidth() + PreviewEndScene.this.dp2px(context, 16.0f);
                                textView.setLayoutParams(layoutParams2);
                            }
                        }
                        layoutParams.leftMargin = (viewCreateView.getMeasuredWidth() - textView.getMeasuredWidth()) / 2;
                        viewCreateView.setLayoutParams(layoutParams);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    viewCreateView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            });
        }
    }

    private View createButtonView(final Context context, ViewGroup viewGroup, final AuthInfo.Component component) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.vg_button_view, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_btn);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_bubble);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_tips);
        textView.setText(component.text);
        textView.setTextColor(component.selected == 1 ? -16777216 : Color.parseColor("#DBB361"));
        textView.setBackgroundResource(component.selected == 1 ? R.drawable.vg_selected_btn_bg : R.drawable.vg_unselected_btn_bg);
        textView.setOnClickListener(new View.OnClickListener() {
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public void onClick(View view) {
                AuthInfo.Action action;
                AuthInfo.Component component2 = component;
                if (component2 == null || (action = component2.action) == null) {
                    return;
                }
                PreviewEndScene previewEndScene = PreviewEndScene.this;
                previewEndScene.onComponentAction(context, previewEndScene, action);
                PreviewEndScene.this.reportVipClick(component);
            }
        });
        if (TextUtils.isEmpty(component.superscript)) {
            textView2.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            textView2.setText(component.superscript);
        }
        if (TextUtils.isEmpty(component.tips)) {
            textView3.setVisibility(8);
        } else {
            textView3.setVisibility(0);
            textView3.setText(component.tips);
        }
        return viewInflate;
    }

    private View createLinkView(final Context context, ViewGroup viewGroup, final AuthInfo.Component component) {
        AuthInfo.Action action = component.action;
        if (action != null && action.tag == 10010) {
            return null;
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.vg_link_view, viewGroup, false);
        ((TextView) viewInflate.findViewById(R.id.tv_link)).setText(component.text);
        viewInflate.setOnClickListener(new View.OnClickListener() {
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public void onClick(View view) {
                AuthInfo.Action action2;
                AuthInfo.Component component2 = component;
                if (component2 == null || (action2 = component2.action) == null) {
                    return;
                }
                PreviewEndScene previewEndScene = PreviewEndScene.this;
                previewEndScene.onComponentAction(context, previewEndScene, action2);
                PreviewEndScene.this.reportVipClick(component);
            }
        });
        return viewInflate;
    }

    private View createSubTitleTextView(Context context, AuthInfo.Component component) {
        TextView textView = new TextView(context);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.bottomMargin = dp2px(context, 10.0f);
        textView.setLayoutParams(marginLayoutParams);
        textView.setGravity(17);
        textView.setTextColor(Color.parseColor("#CCFFFFFF"));
        textView.setTextSize(12.0f);
        textView.setText(component.text);
        return textView;
    }

    private View createTitleTextView(Context context, AuthInfo.Component component) {
        TextView textView = new TextView(context);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.bottomMargin = dp2px(context, 10.0f);
        textView.setLayoutParams(marginLayoutParams);
        textView.setGravity(17);
        textView.setTextColor(-1);
        textView.setTextSize(16.0f);
        textView.setText(component.text);
        return textView;
    }

    private View createView(Context context, ViewGroup viewGroup, AuthInfo.Component component) {
        if (component == null) {
            return null;
        }
        String str = component.code;
        str.hashCode();
        switch (str) {
            case "subtitle":
                return createSubTitleTextView(context, component);
            case "button":
                return createButtonView(context, viewGroup, component);
            case "link":
                return createLinkView(context, viewGroup, component);
            case "title":
                return createTitleTextView(context, component);
            default:
                return null;
        }
    }

    public int dp2px(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    private void fillCenterLayout(Context context) {
        List<AuthInfo.Component> list;
        this.mCenterLayout.removeAllViews();
        AuthInfo.SceneData sceneData = this.mSceneData;
        if (sceneData == null || (list = sceneData.components) == null || list.isEmpty()) {
            this.mCenterLayout.setBackground(null);
            LayoutInflater.from(context).inflate(R.layout.vg_preview_end_view_default, (ViewGroup) this.mCenterLayout, true);
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.mSceneData.bg != null) {
            this.mCenterLayout.setBackgroundColor(Color.parseColor("#BF000000"));
        } else {
            this.mCenterLayout.setBackground(null);
        }
        List<AuthInfo.Component> list2 = this.mSceneData.components;
        SparseArray sparseArray = new SparseArray();
        for (AuthInfo.Component component : list2) {
            if (component != null) {
                List arrayList2 = (List) sparseArray.get(component.line_num);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    sparseArray.put(component.line_num, arrayList2);
                }
                arrayList2.add(component);
                List<String> list3 = component.show;
                if (list3 != null && list3.size() > 0) {
                    arrayList.addAll(component.show);
                }
            }
        }
        for (int i = 0; i < sparseArray.size(); i++) {
            List<AuthInfo.Component> list4 = (List) sparseArray.valueAt(i);
            if (list4.size() == 1) {
                addSingleView(context, list4.get(0));
            } else if (list4.size() > 1) {
                addMultipleView(context, list4);
            }
        }
        reportVip(arrayList);
    }

    private boolean isPortrait(Context context) {
        return context == null || context.getResources().getConfiguration().orientation == 1;
    }

    private void launchPay(String str, String str2, AuthInfo.Action action) {
        StringBuilder sb = new StringBuilder();
        sb.append(URL_VIP_CASHIER);
        if (this.playData != null) {
            sb.append("&plid=");
            sb.append(this.playData.f);
            sb.append("&clipid=");
            sb.append(this.playData.e);
            sb.append("&vid=");
            sb.append(this.playData.c);
            sb.append("&videoId=");
            sb.append(this.playData.c);
            sb.append("&iapType=");
            sb.append(str);
            sb.append("&lcid=");
            sb.append("");
        }
        if (action != null && !TextUtils.isEmpty(action.tag_ext)) {
            sb.append("&");
            sb.append(action.tag_ext);
        }
        sb.append("&bid=");
        sb.append(b.e());
        sb.append("&ftype=");
        sb.append("3");
        sb.append("&clocation=");
        sb.append(str2);
        PlayErrorView.OnErrorViewCallback onErrorViewCallback = this.clicked;
        if (onErrorViewCallback != null) {
            onErrorViewCallback.toVip(sb.toString());
        }
    }

    private void loadBg(Context context) {
        AuthInfo.Bg bg;
        boolean zIsPortrait = isPortrait(context);
        int i = zIsPortrait ? R.drawable.vg_portrait_bg : R.drawable.vg_landspace_bg;
        AuthInfo.SceneData sceneData = this.mSceneData;
        if (sceneData == null || (bg = sceneData.bg) == null) {
            this.mBgView.setImageResource(i);
        } else {
            Glide.with(context).load(zIsPortrait ? bg.vertical_mode_bg : bg.wide_mode_bg).placeholder(i).into(this.mBgView);
        }
    }

    private void reportVip(List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str)) {
                d.a().a(str, new HashMap());
            }
        }
    }

    public void reportVipClick(AuthInfo.Component component) {
        List<String> list;
        if (component == null || (list = component.click) == null) {
            return;
        }
        reportVip(list);
    }

    @Override
    public void attach(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.mBgView == null) {
            ImageView imageView = new ImageView(viewGroup.getContext());
            this.mBgView = imageView;
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        }
        addToViewGroup(this.mBgView, viewGroup);
        if (this.mCenterLayout == null) {
            LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
            this.mCenterLayout = linearLayout;
            linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.mCenterLayout.setOrientation(1);
            this.mCenterLayout.setGravity(17);
        }
        addToViewGroup(this.mCenterLayout, viewGroup);
        loadBg(viewGroup.getContext());
        fillCenterLayout(viewGroup.getContext());
    }

    @Override
    public void detach(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        ImageView imageView = this.mBgView;
        if (imageView != null) {
            viewGroup.removeView(imageView);
        }
        LinearLayout linearLayout = this.mCenterLayout;
        if (linearLayout != null) {
            viewGroup.removeView(linearLayout);
        }
    }

    public void onComponentAction(Context context, IScene iScene, AuthInfo.Action action) {
        if (action == null) {
            launchPay(IapType.OPEN_VIP, iScene instanceof PreviewEndScene ? "20302" : "20301", null);
        }
        if (!TextUtils.isEmpty(action.url)) {
            if (k.a(context, action.url, false)) {
                return;
            }
            this.clicked.toVip(action.url);
            return;
        }
        int i = action.tag;
        if (i == 10010) {
            PlayErrorView.OnErrorViewCallback onErrorViewCallback = this.clicked;
            if (onErrorViewCallback != null) {
                onErrorViewCallback.toLogin();
                return;
            }
            return;
        }
        switch (i) {
            case 10001:
                launchPay(IapType.OPEN_VIP, "20302", action);
                break;
            case 10002:
                launchPay(IapType.PAY_SINGLE_VID, "20303", action);
                break;
            case 10003:
                launchPay(IapType.PAY_VIP_TIP, "1", action);
                break;
            case 10004:
                break;
            default:
                launchPay(IapType.OPEN_VIP, "1", action);
                break;
        }
    }

    public void setOnViewClick(PlayErrorView.OnErrorViewCallback onErrorViewCallback) {
        this.clicked = onErrorViewCallback;
    }
}
