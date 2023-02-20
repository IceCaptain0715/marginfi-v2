#!/usr/bin/env bash

GROUP=567YJkNDCgG6Q6qDwcNK7p8frSL1HRE5J2tqUEXCXR7v
PROGRAM_ID=A7vUDErNPCTt9qrB6SSM4F6GkxzUe9d8P3cXSmRg4eY4
NEW_PROFILE_NAME=indexing

RPC_ENDPOINT=https://devnet.genesysgo.net/
KEYPAIR_PATH=~/.config/solana/id.json

[ -z "$PROGRAM_ID" ] && echo "PROGRAM_ID must be specified. Exiting." && exit 1
[ -z "$NEW_PROFILE_NAME" ] && echo "NEW_PROFILE_NAME must be specified. Exiting." && exit 1

#mfi profile create \
#    --cluster devnet \
#    --name "$NEW_PROFILE_NAME" \
#    --keypair-path "$KEYPAIR_PATH" \
#    --rpc-url "$RPC_ENDPOINT" \
#    --program-id "$PROGRAM_ID"
#
#mfi profile set "$NEW_PROFILE_NAME"
#
#mfi group create "$@" -y

## Add USDC bank
#mfi group add-bank \
#    --mint F9jRT1xL7PCRepBuey5cQG5vWHFSbnvdWxJWKqtzMDsd \
#    --asset-weight-init 0.85 \
#    --asset-weight-maint 0.9 \
#    --liability-weight-maint 1.1 \
#    --liability-weight-init 1.15 \
#    --deposit-limit 1000000000000000\
#    --borrow-limit 1000000000000000\
#    --pyth-oracle 5SSkXsEKQepHHAewytPVwdej4epN1nxgLVM84L4KXgy7 \
#    --optimal-utilization-rate 0.9 \
#    --plateau-interest-rate 1 \
#    --max-interest-rate 10 \
#    --insurance-fee-fixed-apr 0.01 \
#    --insurance-ir-fee 0.1 \
#    --protocol-fixed-fee-apr 0.01 \
#    --protocol-ir-fee 0.1 \
#    -y \
#    "$@"
#
## Add SOL bank
#mfi group add-bank \
#    --mint 4Bn9Wn1sgaD5KfMRZjxwKFcrUy6NKdyqLPtzddazYc4x \
#    --asset-weight-init 0.75 \
#    --asset-weight-maint 0.8 \
#    --liability-weight-maint 1.2 \
#    --liability-weight-init 1.25 \
#    --deposit-limit 1000000000000000\
#    --borrow-limit 1000000000000000\
#    --pyth-oracle J83w4HKfqxwcq3BEMMkPFSppX3gqekLyLJBexebFVkix \
#    --optimal-utilization-rate 0.8 \
#    --plateau-interest-rate 1 \
#    --max-interest-rate 20 \
#    --insurance-fee-fixed-apr 0.01 \
#    --insurance-ir-fee 0.1 \
#    --protocol-fixed-fee-apr 0.01 \
#    --protocol-ir-fee 0.1 \
#    -y \
#    "$@"

## Configure SOL bank
#mfi bank update 5dCnHjFUTjuWq2b9hY2J1o94QR1YpiggUC2XKzA1UpYp \
#    --deposit-limit 100000000000000 \
#    --borrow-limit 10000000000000 -y

#mfi account create -y
mfi account deposit 5dCnHjFUTjuWq2b9hY2J1o94QR1YpiggUC2XKzA1UpYp 0.01 -y
mfi account withdraw 5dCnHjFUTjuWq2b9hY2J1o94QR1YpiggUC2XKzA1UpYp 0.01 -y
