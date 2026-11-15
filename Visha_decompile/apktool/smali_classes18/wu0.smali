.class public final Lwu0;
.super Lxu0;
.source "SourceFile"


# static fields
.field public static final c:Lwu0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwu0;

    invoke-direct {v0}, Lwu0;-><init>()V

    sput-object v0, Lwu0;->c:Lwu0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxu0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c([C)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lxu0;->a([C)V

    return-void
.end method

.method public final d()[C
    .locals 1

    const/16 v0, 0x80

    invoke-super {p0, v0}, Lxu0;->b(I)[C

    move-result-object p0

    return-object p0
.end method
