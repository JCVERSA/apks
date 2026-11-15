.class public final Lxx7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxx7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lxx7$a;

.field public static final b:Lxx7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxx7$a;

    invoke-direct {v0}, Lxx7$a;-><init>()V

    sput-object v0, Lxx7$a;->a:Lxx7$a;

    new-instance v0, Lxx7$a$a;

    invoke-direct {v0}, Lxx7$a$a;-><init>()V

    sput-object v0, Lxx7$a;->b:Lxx7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lxx7;
    .locals 0

    sget-object p0, Lxx7$a;->b:Lxx7;

    return-object p0
.end method
