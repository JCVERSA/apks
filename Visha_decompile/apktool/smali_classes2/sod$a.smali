.class public abstract Lsod$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lsod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsod;

    invoke-direct {v0}, Lsod;-><init>()V

    sput-object v0, Lsod$a;->a:Lsod;

    return-void
.end method

.method public static synthetic a()Lsod;
    .locals 1

    sget-object v0, Lsod$a;->a:Lsod;

    return-object v0
.end method
