.class public final Lky6;
.super Lj29;
.source "SourceFile"


# static fields
.field public static final a:Lky6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lky6;

    invoke-direct {v0}, Lky6;-><init>()V

    sput-object v0, Lky6;->a:Lky6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj29;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
