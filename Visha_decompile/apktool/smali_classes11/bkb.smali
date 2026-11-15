.class public final synthetic Lbkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/membership/UserCenterActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->b:Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    iput-object p2, p0, Lbkb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbkb;->b:Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    iget-object p0, p0, Lbkb;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->q0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;Ljava/lang/String;Lcom/transsion/onlinevideo/membership/UserCenterActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
