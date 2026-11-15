.class public Lri3$a;
.super Lk5a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lri3;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lri3;


# direct methods
.method public constructor <init>(Lri3;)V
    .locals 0

    iput-object p1, p0, Lri3$a;->g:Lri3;

    invoke-direct {p0}, Lk5a;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    iget-object v0, p0, Lri3$a;->g:Lri3;

    invoke-static {v0, p0}, Lri3;->a(Lri3;Lk5a;)V

    return-void
.end method
