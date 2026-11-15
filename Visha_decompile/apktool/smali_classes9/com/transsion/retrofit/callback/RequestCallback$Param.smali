.class public Lcom/transsion/retrofit/callback/RequestCallback$Param;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/callback/RequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field private isDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/retrofit/callback/RequestCallback$Param;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/retrofit/callback/RequestCallback$Param;->isDestroy:Z

    return-void
.end method


# virtual methods
.method public isDestroy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/retrofit/callback/RequestCallback$Param;->isDestroy:Z

    return p0
.end method
