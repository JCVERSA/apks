.class public Lx0d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq5;


# static fields
.field public static final a:Lpq5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw0d;

    invoke-direct {v0}, Lw0d;-><init>()V

    sput-object v0, Lx0d;->a:Lpq5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lpq5;
    .locals 0

    sget-object p0, Lx0d;->a:Lpq5;

    return-object p0
.end method
