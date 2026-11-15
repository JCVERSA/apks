.class public Lcom/transsion/onlinevideo/home/OnlineHomeFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lse7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->showGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$d;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    const-string p0, "vd_ott_leading_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/app/hubert/guide/core/Controller;)V
    .locals 1

    const-string p0, "vd_ott_leadingigot_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/transsion/playercommon/core/MainApp;->n:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x44a

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
