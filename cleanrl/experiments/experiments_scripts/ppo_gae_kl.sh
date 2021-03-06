# This script studies the effectiveness of GAE with KL bound

NUM_CORES=2
export MKL_NUM_THREADS=$NUM_CORES OMP_NUM_THREADS=$NUM_CORES
for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo2_continuous_action.py \
    --gym-id HopperBulletEnv-v0 \
    --total-timesteps 2000000 \
    --kl \
    --gae \
    --wandb-project-name cleanrl.ppo.gae.kl \
    --wandb-entity cleanrl \
    --prod-mode \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done
for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo2_continuous_action.py \
    --gym-id Walker2DBulletEnv-v0 \
    --total-timesteps 2000000 \
    --kl \
    --gae \
    --wandb-project-name cleanrl.ppo.gae.kl \
    --wandb-entity cleanrl \
    --prod-mode \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done
for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo2_continuous_action.py \
    --gym-id HumanoidBulletEnv-v0 \
    --total-timesteps 2000000 \
    --kl \
    --gae \
    --wandb-project-name cleanrl.ppo.gae.kl \
    --wandb-entity cleanrl \
    --prod-mode \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done

for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo2_continuous_action.py \
    --gym-id HopperBulletEnv-v0 \
    --total-timesteps 2000000 \
    --wandb-project-name cleanrl.ppo.gae.kl \
    --wandb-entity cleanrl \
    --prod-mode \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done
for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo2_continuous_action.py \
    --gym-id Walker2DBulletEnv-v0 \
    --total-timesteps 2000000 \
    --wandb-project-name cleanrl.ppo.gae.kl \
    --wandb-entity cleanrl \
    --prod-mode \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done
for seed in {1..2}
do
    (sleep 0.3 && nohup xvfb-run -a python ppo2_continuous_action.py \
    --gym-id HumanoidBulletEnv-v0 \
    --total-timesteps 2000000 \
    --wandb-project-name cleanrl.ppo.gae.kl \
    --wandb-entity cleanrl \
    --prod-mode \
    --capture-video \
    --seed $seed
    ) >& /dev/null &
done