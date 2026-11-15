.class public Lkfc$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgec$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkfc$c;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkfc$c;


# direct methods
.method public constructor <init>(Lkfc$c;)V
    .locals 0

    iput-object p1, p0, Lkfc$c$a;->a:Lkfc$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/VishaOauthData;)V
    .locals 0

    iget-object p0, p0, Lkfc$c$a;->a:Lkfc$c;

    iget-object p1, p0, Lkfc$c;->c:Lmc7;

    iget-object p0, p0, Lkfc$c;->b:Lkfc$d;

    invoke-static {p1, p0}, Lkfc;->b(Lmc7;Lkfc$d;)V

    return-void
.end method
