.class public Lcom/transsion/xuanniao/account/model/data/CloudItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEY_STRING_ID:Ljava/lang/String; = "string_id"

.field public static final KEY_SYNC_STATE:Ljava/lang/String; = "sync_state"


# instance fields
.field public category:I

.field public resId:I

.field public select:Z

.field public state:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/model/data/CloudItem;->select:Z

    return-void
.end method
