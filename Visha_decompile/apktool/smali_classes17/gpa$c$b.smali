.class public final Lgpa$c$b;
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
    name = "b"
.end annotation


# static fields
.field public static final a:Lgpa$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgpa$c$b;

    invoke-direct {v0}, Lgpa$c$b;-><init>()V

    sput-object v0, Lgpa$c$b;->a:Lgpa$c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "."

    return-object p0
.end method
