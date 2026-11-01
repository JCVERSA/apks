.class public final Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$b;->a:Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$b;->a:Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;

    const/4 v1, 0x0

    iput-object v1, v0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    return-void
.end method
