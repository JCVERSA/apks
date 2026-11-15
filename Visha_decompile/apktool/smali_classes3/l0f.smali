.class public abstract Ll0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:signals_collection_on_service:enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Ll0f;->a:Leze;

    return-void
.end method
