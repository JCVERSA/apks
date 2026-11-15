package com.hisavana.mediation.ad;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.List;

public class ViewBinder {
    public final List<Integer> actionIds;
    public View actionView;
    public final int adBadgeView;
    public final int adChoicesView;
    public final int adCloseView;
    public final int adDisclaimerView;
    public final int adStoreMarkView;
    public final int callToActionId;
    public final int descriptionId;
    public final int domainId;
    public final int downloadsId;
    public final int feedbackId;
    public Drawable iconDrawable;
    public final int iconId;
    public View layout;
    public final int layoutId;
    public final int likesId;
    public final int mediaId;
    public final int mode;
    public final int priceId;
    public final int ratingId;
    public final int sourceSizeId;
    public final int sponsoredId;
    public final int titleId;

    public static final class Builder {

        public int f32357a;
        public View actionView;

        public int f32358b;

        public int f32359c;

        public int f32360d;

        public int f32361e;

        public int f32362f;

        public int f32363g;

        public int f32364h;

        public int f32365i;
        public Drawable iconDrawable;

        public int f32366j;

        public int f32367k;

        public int f32368l;

        public int f32369m;

        public int f32370n;

        public int f32371o;

        public List<Integer> f32372p;

        public View f32373q;

        public int f32374r;

        public int f32375s;

        public int f32376t;

        public int f32377u;

        public int f32378v;

        public Builder(int i10) {
            this.f32357a = i10;
        }

        @NonNull
        public final Builder actionIds(Integer... numArr) {
            this.f32372p = Arrays.asList(numArr);
            return this;
        }

        public final Builder adBadgeView(int i10) {
            this.f32369m = i10;
            return this;
        }

        @NonNull
        public final Builder adChoicesView(int i10) {
            this.f32370n = i10;
            return this;
        }

        public final Builder adCloseView(int i10) {
            this.f32371o = i10;
            return this;
        }

        public final Builder adDisclaimerView(int i10) {
            this.f32368l = i10;
            return this;
        }

        @NonNull
        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        @NonNull
        public final Builder callToActionId(int i10) {
            this.f32360d = i10;
            return this;
        }

        public final Builder contextMode(int i10) {
            this.f32374r = i10;
            return this;
        }

        @NonNull
        public final Builder descriptionId(int i10) {
            this.f32362f = i10;
            return this;
        }

        public final Builder domainView(int i10) {
            this.f32376t = i10;
            return this;
        }

        @NonNull
        public final Builder downloadsId(int i10) {
            this.f32367k = i10;
            return this;
        }

        public final Builder feedbackView(int i10) {
            this.f32377u = i10;
            return this;
        }

        public final Builder iconDrawable(Drawable drawable) {
            this.iconDrawable = drawable;
            return this;
        }

        @NonNull
        public final Builder iconId(int i10) {
            this.f32359c = i10;
            return this;
        }

        @NonNull
        public final Builder likesId(int i10) {
            this.f32365i = i10;
            return this;
        }

        @NonNull
        public final Builder mediaId(int i10) {
            this.f32361e = i10;
            return this;
        }

        @NonNull
        public final Builder priceId(int i10) {
            this.f32366j = i10;
            return this;
        }

        @NonNull
        public final Builder ratingId(int i10) {
            this.f32364h = i10;
            return this;
        }

        public Builder setActionView(View view) {
            this.actionView = view;
            return this;
        }

        @NonNull
        public final Builder sourceSizeId(int i10) {
            this.f32378v = i10;
            return this;
        }

        @NonNull
        public final Builder sponsoredId(int i10) {
            this.f32363g = i10;
            return this;
        }

        public final Builder storeMarkView(int i10) {
            this.f32375s = i10;
            return this;
        }

        @NonNull
        public final Builder titleId(int i10) {
            this.f32358b = i10;
            return this;
        }

        public Builder(@NonNull View view) {
            this.f32373q = view;
        }
    }

    public ViewBinder(@NonNull Builder builder) {
        this.layoutId = builder.f32357a;
        this.layout = builder.f32373q;
        this.titleId = builder.f32358b;
        this.callToActionId = builder.f32360d;
        this.iconId = builder.f32359c;
        this.mediaId = builder.f32361e;
        this.descriptionId = builder.f32362f;
        this.sponsoredId = builder.f32363g;
        this.ratingId = builder.f32364h;
        this.likesId = builder.f32365i;
        this.priceId = builder.f32366j;
        this.downloadsId = builder.f32367k;
        this.actionIds = builder.f32372p;
        this.mode = builder.f32374r;
        this.adDisclaimerView = builder.f32368l;
        this.adBadgeView = builder.f32369m;
        this.adChoicesView = builder.f32370n;
        this.adCloseView = builder.f32371o;
        this.adStoreMarkView = builder.f32375s;
        this.domainId = builder.f32376t;
        this.feedbackId = builder.f32377u;
        this.iconDrawable = builder.iconDrawable;
        this.actionView = builder.actionView;
        this.sourceSizeId = builder.f32378v;
    }
}
