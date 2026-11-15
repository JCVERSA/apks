.class public Lupc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lupc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lupc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lupc$a;

    invoke-direct {v0}, Lupc$a;-><init>()V

    sput-object v0, Lupc$a;->a:Lupc$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lupc$a;
    .locals 1

    sget-object v0, Lupc$a;->a:Lupc$a;

    return-object v0
.end method
