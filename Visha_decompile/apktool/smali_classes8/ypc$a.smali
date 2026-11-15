.class public Lypc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lypc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lypc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lypc$a;

    invoke-direct {v0}, Lypc$a;-><init>()V

    sput-object v0, Lypc$a;->a:Lypc$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lypc$a;
    .locals 1

    sget-object v0, Lypc$a;->a:Lypc$a;

    return-object v0
.end method
