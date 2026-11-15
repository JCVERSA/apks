.class public final synthetic Lika;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lika;->b:Le74;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lika;->b:Le74;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->n(Le74;Ljava/lang/Object;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    move-result-object p0

    return-object p0
.end method
