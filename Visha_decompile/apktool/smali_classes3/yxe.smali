.class public final synthetic Lyxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3i;


# instance fields
.field public final synthetic b:Laye;

.field public final synthetic c:Lqxe;


# direct methods
.method public synthetic constructor <init>(Laye;Lqxe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyxe;->b:Laye;

    iput-object p2, p0, Lyxe;->c:Lqxe;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyxe;->b:Laye;

    iget-object p0, p0, Lyxe;->c:Lqxe;

    invoke-static {v0, p0}, Laye;->a(Laye;Lqxe;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
