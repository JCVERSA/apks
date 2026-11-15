.class public final synthetic Lntb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Loyd;


# direct methods
.method public synthetic constructor <init>(Loyd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lntb;->b:Loyd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lntb;->b:Loyd;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->a(Loyd;)V

    return-void
.end method
