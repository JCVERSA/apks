.class public Ldp1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh24;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldp1$c;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldp1$c;


# direct methods
.method public constructor <init>(Ldp1$c;)V
    .locals 0

    iput-object p1, p0, Ldp1$c$a;->a:Ldp1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p0, p0, Ldp1$c$a;->a:Ldp1$c;

    iget-object p1, p0, Ldp1$c;->d:Ldp1;

    iget-object p0, p0, Ldp1$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p0}, Ldp1;->k(Ldp1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
