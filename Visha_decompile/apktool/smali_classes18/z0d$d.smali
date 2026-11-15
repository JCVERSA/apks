.class public Lz0d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0d$d;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lz0d$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz0d$d;->a:Ljava/lang/String;

    return-object p0
.end method
