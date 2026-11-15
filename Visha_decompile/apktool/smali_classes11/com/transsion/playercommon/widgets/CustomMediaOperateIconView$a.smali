.class public interface abstract Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;->lambda$getItemClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$getItemClickListener$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getItemClickListener(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View$OnClickListener;
    .locals 0

    new-instance p0, Lno1;

    invoke-direct {p0}, Lno1;-><init>()V

    return-object p0
.end method
