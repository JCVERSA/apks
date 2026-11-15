.class public Lb8a$a;
.super Lb8a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb8a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Lny9;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, v0}, Lb8a;-><init>(II)V

    invoke-static {}, Lf;->k()Lis6;

    move-result-object v0

    invoke-static {v0}, Lzx8;->b(Lqf0;)Lfp0;

    move-result-object v0

    iput-object v0, p0, Lb8a$a;->c:Lny9;

    return-void
.end method
