.class public final synthetic Lfeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/ucrop/UCropActivity$h;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/ucrop/UCropActivity$h;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfeb;->b:Lcom/transsion/playercommon/ucrop/UCropActivity$h;

    iput-object p2, p0, Lfeb;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfeb;->b:Lcom/transsion/playercommon/ucrop/UCropActivity$h;

    iget-object p0, p0, Lfeb;->c:Landroid/net/Uri;

    check-cast p1, Lcom/transsion/playercommon/ucrop/UCropActivity$h;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->d(Lcom/transsion/playercommon/ucrop/UCropActivity$h;Landroid/net/Uri;Lcom/transsion/playercommon/ucrop/UCropActivity$h;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
