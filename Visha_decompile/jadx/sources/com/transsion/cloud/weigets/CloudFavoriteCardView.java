package com.transsion.cloud.weigets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.transsion.cloud.weigets.CloudFavoriteCardView;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.R;
import defpackage.c74;
import defpackage.e74;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0014\u001a\u00020\f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\f¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010 \u001a\u00020\f2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f0\u001e¢\u0006\u0004\b \u0010!J\u001b\u0010#\u001a\u00020\f2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\f0\"¢\u0006\u0004\b#\u0010$J#\u0010'\u001a\u00020\u00172\b\u0010%\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010&\u001a\u00020\u0006H\u0002¢\u0006\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010.R\u001c\u00103\u001a\b\u0012\u0004\u0012\u00020\u0017008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00107\u001a\u0004\u0018\u0001048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106¨\u00068"}, d2 = {"Lcom/transsion/cloud/weigets/CloudFavoriteCardView;", "Landroidx/cardview/widget/CardView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "title", "Lzfb;", "setTitle", "(Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;", "list", "setVideoShowDataVOList", "(Ljava/util/List;)V", "index", "Landroid/widget/ImageView;", "getImageView", "(I)Landroid/widget/ImageView;", "getImageCount", "()I", "clearImages", "()V", "Lkotlin/Function1;", "listener", "setOnImageClickListener", "(Le74;)V", "Lkotlin/Function0;", "setOnItemClickListener", "(Lc74;)V", "url", "totalCount", "c", "(Ljava/lang/String;I)Landroid/widget/ImageView;", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "titleTextView", "Landroid/widget/LinearLayout;", "Landroid/widget/LinearLayout;", "imagesContainer", "", "d", "Ljava/util/List;", "imageList", "Landroid/graphics/drawable/Drawable;", "e", "Landroid/graphics/drawable/Drawable;", "placeDrawableMain", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudFavoriteCardView extends CardView {

    public TextView titleTextView;

    public LinearLayout imagesContainer;

    public List imageList;

    public final Drawable placeDrawableMain;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CloudFavoriteCardView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void d(e74 e74Var, int i, View view) {
        e74Var.invoke(Integer.valueOf(i));
    }

    public static final void e(c74 c74Var, View view) {
        c74Var.invoke();
    }

    public final ImageView c(String url, int totalCount) {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(totalCount == 1 ? -1 : 0, -1);
        if (totalCount > 1) {
            layoutParams.weight = 1.0f;
        }
        layoutParams.setMargins(0, 0, 0, 0);
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        if (url != null) {
            RequestBuilder<Drawable> requestBuilderLoad = Glide.with(getContext()).load(url);
            int i = R.drawable.ic_online_cover_default;
            requestBuilderLoad.placeholder(i).error(i).into(imageView);
        }
        return imageView;
    }

    public final void clearImages() {
        this.imagesContainer.removeAllViews();
        this.imageList.clear();
    }

    public final int getImageCount() {
        return this.imageList.size();
    }

    public final ImageView getImageView(int index) {
        if (index < 0 || index >= this.imageList.size()) {
            return null;
        }
        return (ImageView) this.imageList.get(index);
    }

    public final String getTitle() {
        return this.titleTextView.getText().toString();
    }

    public final void setOnImageClickListener(final e74 listener) {
        y45.j(listener, "listener");
        int size = this.imageList.size();
        for (final int i = 0; i < size; i++) {
            ((ImageView) this.imageList.get(i)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    CloudFavoriteCardView.d(listener, i, view);
                }
            });
        }
    }

    public final void setOnItemClickListener(final c74 listener) {
        y45.j(listener, "listener");
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CloudFavoriteCardView.e(listener, view);
            }
        });
    }

    public final void setTitle(String title) {
        y45.j(title, "title");
        this.titleTextView.setText(title);
    }

    public final void setVideoShowDataVOList(List<MIMediaVideoData> list) {
        y45.j(list, "list");
        clearImages();
        int size = list.size();
        if (size == 1) {
            this.imagesContainer.setOrientation(1);
        } else {
            this.imagesContainer.setOrientation(0);
        }
        for (int i = 0; i < size; i++) {
            ImageView imageViewC = c(list.get(i).getCover(), size);
            this.imageList.add(imageViewC);
            this.imagesContainer.addView(imageViewC);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CloudFavoriteCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public CloudFavoriteCardView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudFavoriteCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.imageList = new ArrayList();
        this.placeDrawableMain = ResourcesCompat.getDrawable(MainApp.f().getResources(), com.transsion.netdisk.R.drawable.main_fragment_placeholder, MainApp.f().getTheme());
        LayoutInflater.from(context).inflate(com.transsion.netdisk.R.layout.cloud_favorite_card_layout, (ViewGroup) this, true);
        this.titleTextView = (TextView) findViewById(com.transsion.netdisk.R.id.tv_card_title);
        this.imagesContainer = (LinearLayout) findViewById(com.transsion.netdisk.R.id.ll_images_container);
    }
}
