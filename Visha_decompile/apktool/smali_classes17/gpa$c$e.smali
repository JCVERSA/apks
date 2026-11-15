.class public final Lgpa$c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpa$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpa$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lgpa$c$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgpa$c$e;

    invoke-direct {v0}, Lgpa$c$e;-><init>()V

    sput-object v0, Lgpa$c$e;->a:Lgpa$c$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
