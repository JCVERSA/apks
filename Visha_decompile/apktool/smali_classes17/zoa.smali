.class public final Lzoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpa;


# static fields
.field public static final a:Lzoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzoa;

    invoke-direct {v0}, Lzoa;-><init>()V

    sput-object v0, Lzoa;->a:Lzoa;

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

    const-string p0, "("

    return-object p0
.end method
