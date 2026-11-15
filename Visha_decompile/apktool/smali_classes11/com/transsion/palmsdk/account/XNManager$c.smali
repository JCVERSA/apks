.class public abstract Lcom/transsion/palmsdk/account/XNManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/account/XNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:Lcom/transsion/palmsdk/account/XNManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/palmsdk/account/XNManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/palmsdk/account/XNManager;-><init>(Lcom/transsion/palmsdk/account/XNManager$b;)V

    sput-object v0, Lcom/transsion/palmsdk/account/XNManager$c;->a:Lcom/transsion/palmsdk/account/XNManager;

    return-void
.end method
