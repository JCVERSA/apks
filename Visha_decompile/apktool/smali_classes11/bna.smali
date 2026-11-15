.class public final synthetic Lbna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbna;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lbna;->b:J

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-static {v0, v1, p1}, Ldna;->a(JLcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
