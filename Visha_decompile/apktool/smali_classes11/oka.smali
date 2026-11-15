.class public final synthetic Loka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loka;->a:Le74;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Loka;->a:Le74;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->b(Le74;Ljava/lang/Object;)Lmc7;

    move-result-object p0

    return-object p0
.end method
