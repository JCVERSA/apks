.class public final Lapa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpa;


# static fields
.field public static final a:Lapa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lapa;

    invoke-direct {v0}, Lapa;-><init>()V

    sput-object v0, Lapa;->a:Lapa;

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

    const-string p0, ")"

    return-object p0
.end method
