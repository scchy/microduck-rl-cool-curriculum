#!/bin/bash
# Run-6 kip-up rework: resume run-5 policy under the v6 rewards
# (airborne credit / rise gate 360 / stand-tax ramp / neck pose coverage).
cd /home/scc/sccWork/devData/sccDisk/openClaw/gitProj/microduck_rl || exit 1
export WANDB_MODE=offline
export UV_CACHE_DIR=/media/scc/sccDisk/uv-cache
exec .venv/bin/python -m mjlab_microduck.train_cli Mjlab-Roulade-Flat-MicroDuck \
  --env.scene.num-envs 4096 \
  --agent.max-iterations 5000 \
  --agent.load-checkpoint logs/rsl_rl/microduck_roulade/2026-09-06_06-45-03_microduck_roulade/model_4999.pt \
  --agent.resume True
