.class public final Lue0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lue0$a;

.field public static final b:Lue0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lue0$a;

    invoke-direct {v0}, Lue0$a;-><init>()V

    sput-object v0, Lue0$a;->a:Lue0$a;

    new-instance v0, Lue0$a$a;

    invoke-direct {v0}, Lue0$a$a;-><init>()V

    sput-object v0, Lue0$a;->b:Lue0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lue0;
    .locals 0

    sget-object p0, Lue0$a;->b:Lue0;

    return-object p0
.end method
