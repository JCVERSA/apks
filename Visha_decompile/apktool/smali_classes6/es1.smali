.class public final synthetic Les1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnu4;


# direct methods
.method public synthetic constructor <init>(Lnu4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Les1;->b:Lnu4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Les1;->b:Lnu4;

    invoke-static {p0}, Lcom/transsion/dbdata/engine/DataEngine;->i(Lnu4;)V

    return-void
.end method
