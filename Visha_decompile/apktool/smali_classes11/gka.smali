.class public final synthetic Lgka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/repository/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/repository/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgka;->b:Lcom/transsion/onlinevideo/tiktok/repository/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgka;->b:Lcom/transsion/onlinevideo/tiktok/repository/a;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->h(Lcom/transsion/onlinevideo/tiktok/repository/a;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtPlayUrlResponse;)Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    move-result-object p0

    return-object p0
.end method
