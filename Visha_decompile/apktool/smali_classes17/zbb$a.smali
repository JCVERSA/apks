.class public final Lzbb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lzbb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzbb$a;

    invoke-direct {v0}, Lzbb$a;-><init>()V

    sput-object v0, Lzbb$a;->a:Lzbb$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Le74;)Lzbb;
    .locals 0

    const-string p0, "default"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "validator"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lzbb$a$a;

    invoke-direct {p0, p1, p2}, Lzbb$a$a;-><init>(Ljava/lang/Object;Le74;)V

    return-object p0
.end method
