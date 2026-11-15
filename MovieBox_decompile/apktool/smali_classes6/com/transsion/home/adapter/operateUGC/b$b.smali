.class public abstract synthetic Lcom/transsion/home/adapter/operateUGC/b$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/operateUGC/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetailapi/bean/PostItemType;->values()[Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/transsion/home/adapter/operateUGC/b$b;->a:[I

    .line 9
    .line 10
    return-void
.end method
