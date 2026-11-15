.class public final Lgpa$c$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpa$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpa$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lgpa$c$a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgpa$c$a$e;

    invoke-direct {v0}, Lgpa$c$a$e;-><init>()V

    sput-object v0, Lgpa$c$a$e;->a:Lgpa$c$a$e;

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

    const-string p0, "^"

    return-object p0
.end method
