.class public final Lmu1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmu1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmu1;

    invoke-direct {v0}, Lmu1;-><init>()V

    sput-object v0, Lmu1;->a:Lmu1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object p0, Lnu1;->a:Lnu1;

    new-instance v0, Llh5;

    invoke-direct {v0}, Llh5;-><init>()V

    invoke-virtual {p0, v0}, Lnu1;->b(Lru4;)V

    new-instance v0, Lgt7;

    invoke-direct {v0}, Lgt7;-><init>()V

    invoke-virtual {p0, v0}, Lnu1;->b(Lru4;)V

    new-instance v0, Lwx5;

    invoke-direct {v0}, Lwx5;-><init>()V

    invoke-virtual {p0, v0}, Lnu1;->b(Lru4;)V

    return-void
.end method
