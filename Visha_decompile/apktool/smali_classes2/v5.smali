.class public final synthetic Lv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ln6;


# direct methods
.method public synthetic constructor <init>(Ln6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv5;->b:Ln6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lv5;->b:Ln6;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->c(Ln6;)V

    return-void
.end method
