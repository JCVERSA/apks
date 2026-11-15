.class public Lz0d$c;
.super Lz0d$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lz0d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz0d$c;

    invoke-direct {v0}, Lz0d$c;-><init>()V

    sput-object v0, Lz0d$c;->a:Lz0d$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz0d$e;-><init>(Ly0d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
