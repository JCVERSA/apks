package com.yandex.div.core.view2.divs.gallery;

import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.DivCollectionAdapter;
import defpackage.rg2;
import defpackage.y45;
import defpackage.zl2;
import java.util.List;
import java.util.WeakHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R \u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006-"}, d2 = {"Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;", "Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;", "Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;", "", "Lzl2;", "items", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lrg2;", "divBinder", "Lcom/yandex/div/core/view2/DivViewCreator;", "viewCreator", "Lcom/yandex/div/core/state/DivStatePath;", "path", MethodDecl.initName, "(Ljava/util/List;Lcom/yandex/div/core/view2/a;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Landroid/view/ViewGroup;I)Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;", "position", "", "getItemId", "(I)J", "holder", "Lzfb;", "z", "(Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;I)V", "t", "Lcom/yandex/div/core/view2/a;", "u", "Lrg2;", "v", "Lcom/yandex/div/core/view2/DivViewCreator;", "w", "Lcom/yandex/div/core/state/DivStatePath;", "Ljava/util/WeakHashMap;", "x", "Ljava/util/WeakHashMap;", "ids", "y", "J", "lastItemId", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivGalleryAdapter extends DivCollectionAdapter<DivGalleryViewHolder> {

    public final a bindingContext;

    public final rg2 divBinder;

    public final DivViewCreator viewCreator;

    public final DivStatePath path;

    public final WeakHashMap ids;

    public long lastItemId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGalleryAdapter(List list, a aVar, rg2 rg2Var, DivViewCreator divViewCreator, DivStatePath divStatePath) {
        super(list);
        y45.j(list, "items");
        y45.j(aVar, "bindingContext");
        y45.j(rg2Var, "divBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(divStatePath, "path");
        this.bindingContext = aVar;
        this.divBinder = rg2Var;
        this.viewCreator = divViewCreator;
        this.path = divStatePath;
        this.ids = new WeakHashMap();
        setHasStableIds(true);
    }

    @Override
    public DivGalleryViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        y45.j(parent, "parent");
        return new DivGalleryViewHolder(this.bindingContext, new DivGalleryItemLayout(this.bindingContext.a().getContext()), this.divBinder, this.viewCreator, this.path);
    }

    @Override
    public long getItemId(int position) {
        zl2 zl2Var = (zl2) getVisibleItems().get(position);
        Long l = (Long) this.ids.get(zl2Var);
        if (l != null) {
            return l.longValue();
        }
        long j = this.lastItemId;
        this.lastItemId = 1 + j;
        this.ids.put(zl2Var, Long.valueOf(j));
        return j;
    }

    @Override
    public void onBindViewHolder(DivGalleryViewHolder holder, int position) {
        y45.j(holder, "holder");
        zl2 zl2Var = (zl2) getVisibleItems().get(position);
        holder.f(this.bindingContext.c(zl2Var.d()), zl2Var.c(), position, getItems().indexOf(zl2Var));
    }
}
