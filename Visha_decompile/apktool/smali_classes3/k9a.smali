.class public Lk9a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# static fields
.field public static a:Lk9a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lk9a;
    .locals 1

    sget-object v0, Lk9a;->a:Lk9a;

    if-nez v0, :cond_0

    new-instance v0, Lk9a;

    invoke-direct {v0}, Lk9a;-><init>()V

    sput-object v0, Lk9a;->a:Lk9a;

    :cond_0
    sget-object v0, Lk9a;->a:Lk9a;

    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
